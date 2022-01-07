; ModuleID = '/home/carl/AnghaBench/curl/packages/OS400/extr_os400sys.c_Curl_ldap_init_a.c'
source_filename = "/home/carl/AnghaBench/curl/packages/OS400/extr_os400sys.c_Curl_ldap_init_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Curl_ldap_init_a(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @ldap_init(i8* %12, i32 %13)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %3, align 8
  br label %42

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add i32 %19, 1
  %21 = call i8* @malloc(i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %42

25:                                               ; preds = %16
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @QadrtConvertA2E(i8* %26, i8* %27, i32 %28, i32 %29)
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8 0, i8* %34, align 1
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @ldap_init(i8* %35, i32 %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i8*, i8** %8, align 8
  store i8* %41, i8** %3, align 8
  br label %42

42:                                               ; preds = %25, %24, %11
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

declare dso_local i64 @ldap_init(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @QadrtConvertA2E(i8*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

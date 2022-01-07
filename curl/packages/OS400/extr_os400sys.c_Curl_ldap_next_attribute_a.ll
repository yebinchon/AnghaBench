; ModuleID = '/home/carl/AnghaBench/curl/packages/OS400/extr_os400sys.c_Curl_ldap_next_attribute_a.c'
source_filename = "/home/carl/AnghaBench/curl/packages/OS400/extr_os400sys.c_Curl_ldap_next_attribute_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Curl_ldap_next_attribute_a(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i8* @ldap_next_attribute(i8* %11, i32* %12, i32* %13)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %9, align 8
  store i8* %18, i8** %4, align 8
  br label %45

19:                                               ; preds = %3
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i8* @malloc(i32 %23)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = load i8*, i8** %10, align 8
  store i8* %28, i8** %4, align 8
  br label %45

29:                                               ; preds = %19
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @QadrtConvertE2A(i8* %30, i8* %31, i32 %32, i32 %33)
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @strcpy(i8* %39, i8* %40)
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load i8*, i8** %9, align 8
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %29, %27, %17
  %46 = load i8*, i8** %4, align 8
  ret i8* %46
}

declare dso_local i8* @ldap_next_attribute(i8*, i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @QadrtConvertE2A(i8*, i8*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

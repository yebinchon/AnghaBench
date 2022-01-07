; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_getInfoField.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_getInfoField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @getInfoField to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getInfoField(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @strstr(i8* %10, i8* %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %61

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = add nsw i64 %18, 1
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 %19
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 13)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 44)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ult i8* %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %32, %28, %16
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = mul i64 1, %39
  %41 = add i64 %40, 1
  %42 = trunc i64 %41 to i32
  %43 = call i8* @malloc(i32 %42)
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memcpy(i8* %44, i8* %45, i32 %51)
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = getelementptr inbounds i8, i8* %53, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %9, align 8
  store i8* %60, i8** %3, align 8
  br label %61

61:                                               ; preds = %34, %15
  %62 = load i8*, i8** %3, align 8
  ret i8* %62
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

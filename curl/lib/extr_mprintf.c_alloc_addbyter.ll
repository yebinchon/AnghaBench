; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_mprintf.c_alloc_addbyter.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_mprintf.c_alloc_addbyter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asprintf = type { i8*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @alloc_addbyter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_addbyter(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.asprintf*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = bitcast i32* %10 to %struct.asprintf*
  store %struct.asprintf* %11, %struct.asprintf** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %7, align 1
  %14 = load %struct.asprintf*, %struct.asprintf** %6, align 8
  %15 = getelementptr inbounds %struct.asprintf, %struct.asprintf* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %2
  %19 = call i8* @malloc(i32 32)
  %20 = load %struct.asprintf*, %struct.asprintf** %6, align 8
  %21 = getelementptr inbounds %struct.asprintf, %struct.asprintf* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.asprintf*, %struct.asprintf** %6, align 8
  %23 = getelementptr inbounds %struct.asprintf, %struct.asprintf* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load %struct.asprintf*, %struct.asprintf** %6, align 8
  %28 = getelementptr inbounds %struct.asprintf, %struct.asprintf* %27, i32 0, i32 1
  store i32 1, i32* %28, align 8
  store i32 -1, i32* %3, align 4
  br label %92

29:                                               ; preds = %18
  %30 = load %struct.asprintf*, %struct.asprintf** %6, align 8
  %31 = getelementptr inbounds %struct.asprintf, %struct.asprintf* %30, i32 0, i32 2
  store i32 32, i32* %31, align 4
  %32 = load %struct.asprintf*, %struct.asprintf** %6, align 8
  %33 = getelementptr inbounds %struct.asprintf, %struct.asprintf* %32, i32 0, i32 3
  store i32 0, i32* %33, align 8
  br label %76

34:                                               ; preds = %2
  %35 = load %struct.asprintf*, %struct.asprintf** %6, align 8
  %36 = getelementptr inbounds %struct.asprintf, %struct.asprintf* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  %39 = load %struct.asprintf*, %struct.asprintf** %6, align 8
  %40 = getelementptr inbounds %struct.asprintf, %struct.asprintf* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %38, %41
  br i1 %42, label %43, label %75

43:                                               ; preds = %34
  store i8* null, i8** %8, align 8
  %44 = load %struct.asprintf*, %struct.asprintf** %6, align 8
  %45 = getelementptr inbounds %struct.asprintf, %struct.asprintf* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.asprintf*, %struct.asprintf** %6, align 8
  %51 = getelementptr inbounds %struct.asprintf, %struct.asprintf* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ugt i64 %49, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %43
  %56 = load %struct.asprintf*, %struct.asprintf** %6, align 8
  %57 = getelementptr inbounds %struct.asprintf, %struct.asprintf* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i8* @realloc(i8* %58, i64 %59)
  store i8* %60, i8** %8, align 8
  br label %61

61:                                               ; preds = %55, %43
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load %struct.asprintf*, %struct.asprintf** %6, align 8
  %66 = getelementptr inbounds %struct.asprintf, %struct.asprintf* %65, i32 0, i32 1
  store i32 1, i32* %66, align 8
  store i32 -1, i32* %3, align 4
  br label %92

67:                                               ; preds = %61
  %68 = load i8*, i8** %8, align 8
  %69 = load %struct.asprintf*, %struct.asprintf** %6, align 8
  %70 = getelementptr inbounds %struct.asprintf, %struct.asprintf* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load i64, i64* %9, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.asprintf*, %struct.asprintf** %6, align 8
  %74 = getelementptr inbounds %struct.asprintf, %struct.asprintf* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %67, %34
  br label %76

76:                                               ; preds = %75, %29
  %77 = load i8, i8* %7, align 1
  %78 = load %struct.asprintf*, %struct.asprintf** %6, align 8
  %79 = getelementptr inbounds %struct.asprintf, %struct.asprintf* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.asprintf*, %struct.asprintf** %6, align 8
  %82 = getelementptr inbounds %struct.asprintf, %struct.asprintf* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  store i8 %77, i8* %85, align 1
  %86 = load %struct.asprintf*, %struct.asprintf** %6, align 8
  %87 = getelementptr inbounds %struct.asprintf, %struct.asprintf* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load i8, i8* %7, align 1
  %91 = zext i8 %90 to i32
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %76, %64, %26
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

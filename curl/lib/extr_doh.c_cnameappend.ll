; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_doh.c_cnameappend.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_doh.c_cnameappend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnamestore = type { i8*, i64, i64 }

@DOH_OUT_OF_MEM = common dso_local global i32 0, align 4
@DOH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnamestore*, i8*, i64)* @cnameappend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnameappend(%struct.cnamestore* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cnamestore*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.cnamestore* %0, %struct.cnamestore** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.cnamestore*, %struct.cnamestore** %5, align 8
  %10 = getelementptr inbounds %struct.cnamestore, %struct.cnamestore* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = add i64 %14, 1
  %16 = load %struct.cnamestore*, %struct.cnamestore** %5, align 8
  %17 = getelementptr inbounds %struct.cnamestore, %struct.cnamestore* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load %struct.cnamestore*, %struct.cnamestore** %5, align 8
  %19 = getelementptr inbounds %struct.cnamestore, %struct.cnamestore* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i8* @malloc(i64 %20)
  %22 = load %struct.cnamestore*, %struct.cnamestore** %5, align 8
  %23 = getelementptr inbounds %struct.cnamestore, %struct.cnamestore* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.cnamestore*, %struct.cnamestore** %5, align 8
  %25 = getelementptr inbounds %struct.cnamestore, %struct.cnamestore* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %13
  %29 = load i32, i32* @DOH_OUT_OF_MEM, align 4
  store i32 %29, i32* %4, align 4
  br label %93

30:                                               ; preds = %13
  br label %69

31:                                               ; preds = %3
  %32 = load %struct.cnamestore*, %struct.cnamestore** %5, align 8
  %33 = getelementptr inbounds %struct.cnamestore, %struct.cnamestore* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.cnamestore*, %struct.cnamestore** %5, align 8
  %36 = getelementptr inbounds %struct.cnamestore, %struct.cnamestore* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %37, %38
  %40 = add i64 %39, 1
  %41 = icmp ult i64 %34, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %31
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  %45 = load %struct.cnamestore*, %struct.cnamestore** %5, align 8
  %46 = getelementptr inbounds %struct.cnamestore, %struct.cnamestore* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load %struct.cnamestore*, %struct.cnamestore** %5, align 8
  %50 = getelementptr inbounds %struct.cnamestore, %struct.cnamestore* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.cnamestore*, %struct.cnamestore** %5, align 8
  %53 = getelementptr inbounds %struct.cnamestore, %struct.cnamestore* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i8* @realloc(i8* %51, i64 %54)
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %42
  %59 = load %struct.cnamestore*, %struct.cnamestore** %5, align 8
  %60 = getelementptr inbounds %struct.cnamestore, %struct.cnamestore* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i32, i32* @DOH_OUT_OF_MEM, align 4
  store i32 %63, i32* %4, align 4
  br label %93

64:                                               ; preds = %42
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.cnamestore*, %struct.cnamestore** %5, align 8
  %67 = getelementptr inbounds %struct.cnamestore, %struct.cnamestore* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %64, %31
  br label %69

69:                                               ; preds = %68, %30
  %70 = load %struct.cnamestore*, %struct.cnamestore** %5, align 8
  %71 = getelementptr inbounds %struct.cnamestore, %struct.cnamestore* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.cnamestore*, %struct.cnamestore** %5, align 8
  %74 = getelementptr inbounds %struct.cnamestore, %struct.cnamestore* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @memcpy(i8* %76, i8* %77, i64 %78)
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.cnamestore*, %struct.cnamestore** %5, align 8
  %82 = getelementptr inbounds %struct.cnamestore, %struct.cnamestore* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, %80
  store i64 %84, i64* %82, align 8
  %85 = load %struct.cnamestore*, %struct.cnamestore** %5, align 8
  %86 = getelementptr inbounds %struct.cnamestore, %struct.cnamestore* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.cnamestore*, %struct.cnamestore** %5, align 8
  %89 = getelementptr inbounds %struct.cnamestore, %struct.cnamestore* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  store i8 0, i8* %91, align 1
  %92 = load i32, i32* @DOH_OK, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %69, %58, %28
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

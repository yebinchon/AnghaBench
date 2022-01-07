; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/unzip/extr_unzip.c_ecd_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/unzip/extr_unzip.c_ecd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Retry reading of zip ecd for %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @ecd_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecd_read(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 1024, i32* %5, align 4
  br label %7

7:                                                ; preds = %1, %101
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %8, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %13, %7
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %23, %24
  %26 = load i32, i32* @SEEK_SET, align 4
  %27 = call i64 @fseek(i32 %20, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %102

30:                                               ; preds = %17
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @malloc(i32 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %102

37:                                               ; preds = %30
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @fread(i8* %38, i32 %39, i32 1, i32 %42)
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @free(i8* %46)
  store i32 -1, i32* %2, align 4
  br label %102

48:                                               ; preds = %37
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @ecd_find_sig(i8* %49, i32 %50, i32* %6)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @malloc(i32 %61)
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %53
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @free(i8* %71)
  store i32 -1, i32* %2, align 4
  br label %102

73:                                               ; preds = %53
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @memcpy(i8* %76, i8* %80, i32 %83)
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @free(i8* %85)
  store i32 0, i32* %2, align 4
  br label %102

87:                                               ; preds = %48
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @free(i8* %88)
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  %96 = load i32, i32* %5, align 4
  %97 = mul nsw i32 2, %96
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @logerror(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %101

100:                                              ; preds = %87
  store i32 -1, i32* %2, align 4
  br label %102

101:                                              ; preds = %95
  br label %7

102:                                              ; preds = %100, %73, %70, %45, %36, %29
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i64 @fseek(i32, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @ecd_find_sig(i8*, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @logerror(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

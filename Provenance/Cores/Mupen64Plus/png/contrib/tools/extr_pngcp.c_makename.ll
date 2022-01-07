; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_makename.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_makename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i8* }

@INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"NULL name to makename\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"infile with trailing /\00", align 1
@USER_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: output file is a directory\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%s%s: output file name too long\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"%s: output directory name too long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*, i8*, i8*)* @makename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makename(%struct.display* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.display*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.display* %0, %struct.display** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.display*, %struct.display** %4, align 8
  %11 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %13, align 1
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16, %3
  %20 = load %struct.display*, %struct.display** %4, align 8
  %21 = load i32, i32* @INTERNAL_ERROR, align 4
  %22 = call i32 (%struct.display*, i32, i8*, ...) @display_log(%struct.display* %20, i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %141

23:                                               ; preds = %16
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ule i64 %26, 6
  br i1 %27, label %28, label %135

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = sub i64 %31, 1
  store i64 %32, i64* %9, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 47
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load %struct.display*, %struct.display** %4, align 8
  %41 = load i32, i32* @INTERNAL_ERROR, align 4
  %42 = call i32 (%struct.display*, i32, i8*, ...) @display_log(%struct.display* %40, i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %28
  %44 = load %struct.display*, %struct.display** %4, align 8
  %45 = getelementptr inbounds %struct.display, %struct.display* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @memcpy(i8* %46, i8* %47, i64 %48)
  %50 = load i64, i64* %7, align 8
  %51 = icmp ugt i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %43
  %53 = load %struct.display*, %struct.display** %4, align 8
  %54 = getelementptr inbounds %struct.display, %struct.display* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = sub i64 %56, 1
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 47
  br i1 %61, label %62, label %69

62:                                               ; preds = %52
  %63 = load %struct.display*, %struct.display** %4, align 8
  %64 = getelementptr inbounds %struct.display, %struct.display* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %7, align 8
  %68 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8 47, i8* %68, align 1
  br label %69

69:                                               ; preds = %62, %52, %43
  br label %70

70:                                               ; preds = %83, %69
  %71 = load i64, i64* %9, align 8
  %72 = icmp ugt i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* %9, align 8
  %76 = sub i64 %75, 1
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 47
  br label %81

81:                                               ; preds = %73, %70
  %82 = phi i1 [ false, %70 ], [ %80, %73 ]
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = load i64, i64* %9, align 8
  %85 = add i64 %84, -1
  store i64 %85, i64* %9, align 8
  br label %70

86:                                               ; preds = %81
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %8, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 %90
  store i8* %92, i8** %6, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %8, align 8
  %95 = add i64 %93, %94
  %96 = icmp ult i64 %95, 8
  br i1 %96, label %97, label %121

97:                                               ; preds = %86
  %98 = load %struct.display*, %struct.display** %4, align 8
  %99 = getelementptr inbounds %struct.display, %struct.display* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i8*, i8** %6, align 8
  %104 = load i64, i64* %8, align 8
  %105 = add i64 %104, 1
  %106 = call i32 @memcpy(i8* %102, i8* %103, i64 %105)
  %107 = load %struct.display*, %struct.display** %4, align 8
  %108 = load %struct.display*, %struct.display** %4, align 8
  %109 = getelementptr inbounds %struct.display, %struct.display* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @isdir(%struct.display* %107, i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %97
  %114 = load %struct.display*, %struct.display** %4, align 8
  %115 = load i32, i32* @USER_ERROR, align 4
  %116 = load %struct.display*, %struct.display** %4, align 8
  %117 = getelementptr inbounds %struct.display, %struct.display* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (%struct.display*, i32, i8*, ...) @display_log(%struct.display* %114, i32 %115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %113, %97
  br label %134

121:                                              ; preds = %86
  %122 = load %struct.display*, %struct.display** %4, align 8
  %123 = getelementptr inbounds %struct.display, %struct.display* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i64, i64* %7, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8 0, i8* %126, align 1
  %127 = load %struct.display*, %struct.display** %4, align 8
  %128 = load i32, i32* @USER_ERROR, align 4
  %129 = load %struct.display*, %struct.display** %4, align 8
  %130 = getelementptr inbounds %struct.display, %struct.display* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 (%struct.display*, i32, i8*, ...) @display_log(%struct.display* %127, i32 %128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %131, i8* %132)
  br label %134

134:                                              ; preds = %121, %120
  br label %140

135:                                              ; preds = %23
  %136 = load %struct.display*, %struct.display** %4, align 8
  %137 = load i32, i32* @USER_ERROR, align 4
  %138 = load i8*, i8** %5, align 8
  %139 = call i32 (%struct.display*, i32, i8*, ...) @display_log(%struct.display* %136, i32 %137, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %135, %134
  br label %141

141:                                              ; preds = %140, %19
  ret void
}

declare dso_local i32 @display_log(%struct.display*, i32, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @isdir(%struct.display*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

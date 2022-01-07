; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_zlib_check.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_zlib_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, i32 }
%struct.zlib = type { i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@TOO_FAR_BACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"zlib checkum\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"[truncated]\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32)* @zlib_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlib_check(%struct.file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.zlib, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call i32 @file_getpos(%struct.file* %12, i32* %6)
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @zlib_init(%struct.zlib* %7, i32 %16, i32 %19, i32 0, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %148

23:                                               ; preds = %2
  %24 = call i32 @zlib_run(%struct.zlib* %7)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %81 [
    i32 128, label %26
    i32 129, label %35
    i32 130, label %75
  ]

26:                                               ; preds = %23
  %27 = load i32, i32* @TOO_FAR_BACK, align 4
  %28 = load %struct.file*, %struct.file** %4, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = getelementptr inbounds %struct.zlib, %struct.zlib* %7, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  store i32 15, i32* %9, align 4
  br label %83

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.zlib, %struct.zlib* %7, i32 0, i32 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.zlib, %struct.zlib* %7, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.zlib, %struct.zlib* %7, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.zlib, %struct.zlib* %7, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = call i32 @zlib_end(%struct.zlib* %7)
  store i32 1, i32* %3, align 4
  br label %150

53:                                               ; preds = %47, %41, %35
  %54 = getelementptr inbounds %struct.zlib, %struct.zlib* %7, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.zlib, %struct.zlib* %7, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @max_window_bits(i32 %55, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = getelementptr inbounds %struct.zlib, %struct.zlib* %7, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.zlib, %struct.zlib* %7, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %53
  store i32 8, i32* %8, align 4
  %67 = getelementptr inbounds %struct.zlib, %struct.zlib* %7, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.zlib, %struct.zlib* %7, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @chunk_message(i32 %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70, %66
  br label %83

75:                                               ; preds = %23
  %76 = call i8* @PNGZ_MSG_CAST(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %77 = bitcast i8* %76 to i32*
  %78 = getelementptr inbounds %struct.zlib, %struct.zlib* %7, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = call i32 @zlib_message(%struct.zlib* %7, i32 0)
  br label %81

81:                                               ; preds = %23, %75
  %82 = call i32 @zlib_end(%struct.zlib* %7)
  store i32 0, i32* %3, align 4
  br label %150

83:                                               ; preds = %74, %26
  br label %84

84:                                               ; preds = %139, %83
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %93, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %9, align 4
  %90 = getelementptr inbounds %struct.zlib, %struct.zlib* %7, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %89, %91
  br label %93

93:                                               ; preds = %88, %84
  %94 = phi i1 [ true, %84 ], [ %92, %88 ]
  br i1 %94, label %95, label %140

95:                                               ; preds = %93
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %96, %97
  %99 = ashr i32 %98, 1
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i64 @zlib_reset(%struct.zlib* %7, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %137

103:                                              ; preds = %95
  %104 = load %struct.file*, %struct.file** %4, align 8
  %105 = call i32 @file_setpos(%struct.file* %104, i32* %6)
  %106 = call i32 @zlib_run(%struct.zlib* %7)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  switch i32 %107, label %134 [
    i32 128, label %108
    i32 129, label %132
  ]

108:                                              ; preds = %103
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %131

114:                                              ; preds = %108
  %115 = load i32, i32* %11, align 4
  %116 = icmp eq i32 %115, 15
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = getelementptr inbounds %struct.zlib, %struct.zlib* %7, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %114
  %124 = call i8* @PNGZ_MSG_CAST(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %125 = bitcast i8* %124 to i32*
  %126 = getelementptr inbounds %struct.zlib, %struct.zlib* %7, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store i32* %125, i32** %127, align 8
  br label %128

128:                                              ; preds = %123, %114
  %129 = call i32 @zlib_message(%struct.zlib* %7, i32 0)
  %130 = call i32 @zlib_end(%struct.zlib* %7)
  store i32 0, i32* %3, align 4
  br label %150

131:                                              ; preds = %108
  br label %136

132:                                              ; preds = %103
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %9, align 4
  br label %136

134:                                              ; preds = %103
  %135 = call i32 @zlib_end(%struct.zlib* %7)
  store i32 0, i32* %3, align 4
  br label %150

136:                                              ; preds = %132, %131
  br label %139

137:                                              ; preds = %95
  %138 = call i32 @zlib_end(%struct.zlib* %7)
  store i32 0, i32* %3, align 4
  br label %150

139:                                              ; preds = %136
  br label %84

140:                                              ; preds = %93
  %141 = getelementptr inbounds %struct.zlib, %struct.zlib* %7, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = call i32 @zlib_end(%struct.zlib* %7)
  store i32 1, i32* %3, align 4
  br label %150

148:                                              ; preds = %2
  %149 = call i32 @zlib_end(%struct.zlib* %7)
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %140, %137, %134, %128, %81, %51
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @file_getpos(%struct.file*, i32*) #1

declare dso_local i64 @zlib_init(%struct.zlib*, i32, i32, i32, i32) #1

declare dso_local i32 @zlib_run(%struct.zlib*) #1

declare dso_local i32 @zlib_end(%struct.zlib*) #1

declare dso_local i32 @max_window_bits(i32, i32) #1

declare dso_local i32 @chunk_message(i32, i8*) #1

declare dso_local i8* @PNGZ_MSG_CAST(i8*) #1

declare dso_local i32 @zlib_message(%struct.zlib*, i32) #1

declare dso_local i64 @zlib_reset(%struct.zlib*, i32) #1

declare dso_local i32 @file_setpos(%struct.file*, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

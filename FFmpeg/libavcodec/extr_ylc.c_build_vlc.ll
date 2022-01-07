; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ylc.c_build_vlc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ylc.c_build_vlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@UINT32_MAX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"count overflow\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @build_vlc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_vlc(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [512 x %struct.TYPE_3__], align 16
  %9 = alloca [256 x i32], align 16
  %10 = alloca [256 x i32], align 16
  %11 = alloca [256 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %15, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @ff_free_vlc(i32* %22)
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %56, %3
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 256
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %8, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %8, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %8, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i32 -2, i32* %45, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %8, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %8, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %27
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %24

59:                                               ; preds = %24
  store i32 256, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %175, %59
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %169, %60
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %8, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 -1, i32* %68, align 4
  br label %69

69:                                               ; preds = %102, %61
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %8, i64 0, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %21, align 4
  %75 = load i32, i32* %21, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %69
  %78 = load i32, i32* %21, align 4
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %8, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %78, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %77
  %86 = load i32, i32* %21, align 4
  %87 = load i32, i32* %18, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %8, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp sge i32 %86, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %17, align 4
  br label %98

95:                                               ; preds = %85
  %96 = load i32, i32* %18, align 4
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %18, align 4
  br label %98

98:                                               ; preds = %95, %93
  br label %99

99:                                               ; preds = %98, %77, %69
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %16, align 4
  br label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %69, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %172

111:                                              ; preds = %106
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %8, i64 0, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %19, align 4
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %8, i64 0, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %20, align 4
  %122 = load i32, i32* %18, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %8, i64 0, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  store i32 0, i32* %125, align 4
  %126 = load i32, i32* %17, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %8, i64 0, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  store i32 0, i32* %129, align 4
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* @UINT32_MAX, align 4
  %132 = load i32, i32* %20, align 4
  %133 = sub i32 %131, %132
  %134 = icmp uge i32 %130, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %111
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* @AV_LOG_ERROR, align 4
  %138 = call i32 @av_log(i32* %136, i32 %137, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %139 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %139, i32* %4, align 4
  br label %194

140:                                              ; preds = %111
  %141 = load i32, i32* %19, align 4
  %142 = load i32, i32* %20, align 4
  %143 = add i32 %141, %142
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %8, i64 0, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  store i32 %143, i32* %147, align 4
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %8, i64 0, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  store i32 -1, i32* %151, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %8, i64 0, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 2
  store i32 %152, i32* %156, align 4
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %8, i64 0, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 3
  store i32 %157, i32* %161, align 4
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %8, i64 0, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 4
  store i32 %162, i32* %166, align 4
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %12, align 4
  br label %169

169:                                              ; preds = %140
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %13, align 4
  br label %61

172:                                              ; preds = %110
  %173 = load i32, i32* %14, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %14, align 4
  br label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %12, align 4
  %177 = sub nsw i32 %176, 256
  %178 = load i32, i32* %14, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %60, label %180

180:                                              ; preds = %175
  %181 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %182 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %183 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %184 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %185 = load i32, i32* %12, align 4
  %186 = sub nsw i32 %185, 1
  %187 = call i32 @get_tree_codes(i32* %181, i32* %182, i32* %183, %struct.TYPE_3__* %184, i32 %186, i32 0, i32 0, i32* %15)
  %188 = load i32*, i32** %6, align 8
  %189 = load i32, i32* %15, align 4
  %190 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %191 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %192 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %193 = call i32 @ff_init_vlc_sparse(i32* %188, i32 10, i32 %189, i32* %190, i32 2, i32 2, i32* %191, i32 4, i32 4, i32* %192, i32 1, i32 1, i32 0)
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %180, %135
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i32 @ff_free_vlc(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @get_tree_codes(i32*, i32*, i32*, %struct.TYPE_3__*, i32, i32, i32, i32*) #1

declare dso_local i32 @ff_init_vlc_sparse(i32*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

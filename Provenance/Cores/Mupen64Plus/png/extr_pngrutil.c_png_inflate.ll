; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_inflate.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrutil.c_png_inflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32*, i32 }

@PNG_INFLATE_BUF_SIZE = common dso_local global i32 0, align 4
@ZLIB_IO_MAX = common dso_local global i64 0, align 8
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"zstream unclaimed\00", align 1
@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, i32, i32, i64*, i32*, i64*)* @png_inflate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_inflate(%struct.TYPE_7__* %0, i64 %1, i32 %2, i32 %3, i64* %4, i32* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64* %4, i64** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64* %6, i64** %15, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %171

27:                                               ; preds = %7
  %28 = load i64*, i64** %15, align 8
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %17, align 8
  %30 = load i64*, i64** %13, align 8
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %18, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @PNGZ_INPUT_CAST(i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  store i32 %33, i32* %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %27
  %46 = load i32*, i32** %14, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  store i32* %46, i32** %49, align 8
  br label %50

50:                                               ; preds = %45, %27
  br label %51

51:                                               ; preds = %127, %50
  %52 = load i32, i32* @PNG_INFLATE_BUF_SIZE, align 4
  %53 = zext i32 %52 to i64
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %20, align 8
  %55 = alloca i32, i64 %53, align 16
  store i64 %53, i64* %21, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %18, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %18, align 8
  %62 = load i64, i64* @ZLIB_IO_MAX, align 8
  store i64 %62, i64* %19, align 8
  %63 = load i64, i64* %18, align 8
  %64 = load i64, i64* %19, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  %67 = load i64, i64* %18, align 8
  store i64 %67, i64* %19, align 8
  br label %68

68:                                               ; preds = %66, %51
  %69 = load i64, i64* %19, align 8
  %70 = load i64, i64* %18, align 8
  %71 = sub nsw i64 %70, %69
  store i64 %71, i64* %18, align 8
  %72 = load i64, i64* %19, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %17, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %17, align 8
  %82 = load i64, i64* @ZLIB_IO_MAX, align 8
  store i64 %82, i64* %19, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %68
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  store i32* %55, i32** %88, align 8
  %89 = mul nuw i64 4, %53
  %90 = load i64, i64* %19, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = mul nuw i64 4, %53
  store i64 %93, i64* %19, align 8
  br label %94

94:                                               ; preds = %92, %85
  br label %95

95:                                               ; preds = %94, %68
  %96 = load i64, i64* %17, align 8
  %97 = load i64, i64* %19, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i64, i64* %17, align 8
  store i64 %100, i64* %19, align 8
  br label %101

101:                                              ; preds = %99, %95
  %102 = load i64, i64* %19, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i64 %102, i64* %105, align 8
  %106 = load i64, i64* %19, align 8
  %107 = load i64, i64* %17, align 8
  %108 = sub nsw i64 %107, %106
  store i64 %108, i64* %17, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %110 = load i64, i64* %17, align 8
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %101
  %113 = load i32, i32* @Z_NO_FLUSH, align 4
  br label %123

114:                                              ; preds = %101
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i32, i32* @Z_FINISH, align 4
  br label %121

119:                                              ; preds = %114
  %120 = load i32, i32* @Z_SYNC_FLUSH, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  br label %123

123:                                              ; preds = %121, %112
  %124 = phi i32 [ %113, %112 ], [ %122, %121 ]
  %125 = call i32 @PNG_INFLATE(%struct.TYPE_7__* %109, i32 %124)
  store i32 %125, i32* %16, align 4
  %126 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %126)
  br label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* @Z_OK, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %51, label %131

131:                                              ; preds = %127
  %132 = load i32*, i32** %14, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 3
  store i32* null, i32** %137, align 8
  br label %138

138:                                              ; preds = %134, %131
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %18, align 8
  %144 = add nsw i64 %143, %142
  store i64 %144, i64* %18, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %17, align 8
  %150 = add nsw i64 %149, %148
  store i64 %150, i64* %17, align 8
  %151 = load i64, i64* %17, align 8
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %138
  %154 = load i64, i64* %17, align 8
  %155 = load i64*, i64** %15, align 8
  %156 = load i64, i64* %155, align 8
  %157 = sub nsw i64 %156, %154
  store i64 %157, i64* %155, align 8
  br label %158

158:                                              ; preds = %153, %138
  %159 = load i64, i64* %18, align 8
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load i64, i64* %18, align 8
  %163 = load i64*, i64** %13, align 8
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %164, %162
  store i64 %165, i64* %163, align 8
  br label %166

166:                                              ; preds = %161, %158
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @png_zstream_error(%struct.TYPE_7__* %167, i32 %168)
  %170 = load i32, i32* %16, align 4
  store i32 %170, i32* %8, align 4
  br label %177

171:                                              ; preds = %7
  %172 = call i32 @PNGZ_MSG_CAST(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  store i32 %172, i32* %175, align 8
  %176 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %171, %166
  %178 = load i32, i32* %8, align 4
  ret i32 %178
}

declare dso_local i32 @PNGZ_INPUT_CAST(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @PNG_INFLATE(%struct.TYPE_7__*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @png_zstream_error(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @PNGZ_MSG_CAST(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

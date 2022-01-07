; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rasc.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rasc.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_30__*, i32, %struct.TYPE_27__*, %struct.TYPE_26__*, i32 }
%struct.TYPE_30__ = type { i32, i32, i32* }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_29__ = type { i32, i32 }

@EMPT = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@KBND = common dso_local global i32 0, align 4
@BNDL = common dso_local global i32 0, align 4
@AV_PIX_FMT_PAL8 = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, i8*, i32*, %struct.TYPE_29__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_31__* %0, i8* %1, i32* %2, %struct.TYPE_29__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_29__* %3, %struct.TYPE_29__** %9, align 8
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  store %struct.TYPE_28__* %19, %struct.TYPE_28__** %10, align 8
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 4
  store i32* %21, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %23, %struct.TYPE_30__** %14, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bytestream2_init(i32* %24, i32 %27, i32 %30)
  %32 = load i32*, i32** %11, align 8
  %33 = call i64 @bytestream2_peek_le32(i32* %32)
  %34 = load i64, i64* @EMPT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %4
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %5, align 4
  br label %211

40:                                               ; preds = %4
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 0
  store %struct.TYPE_30__* %41, %struct.TYPE_30__** %43, align 8
  br label %44

44:                                               ; preds = %121, %40
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @bytestream2_get_bytes_left(i32* %45)
  %47 = icmp ugt i32 %46, 0
  br i1 %47, label %48, label %122

48:                                               ; preds = %44
  store i32 0, i32* %16, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @bytestream2_get_bytes_left(i32* %49)
  %51 = icmp ult i32 %50, 8
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %5, align 4
  br label %211

54:                                               ; preds = %48
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @bytestream2_get_le32(i32* %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @KBND, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @BNDL, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60, %54
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @KBND, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %13, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @bytestream2_get_le32(i32* %69)
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %64, %60
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @bytestream2_get_le32(i32* %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @bytestream2_get_bytes_left(i32* %74)
  %76 = load i32, i32* %16, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %79, i32* %5, align 4
  br label %211

80:                                               ; preds = %71
  %81 = load i32, i32* %15, align 4
  switch i32 %81, label %112 [
    i32 133, label %82
    i32 132, label %82
    i32 131, label %87
    i32 134, label %92
    i32 129, label %97
    i32 130, label %102
    i32 128, label %107
  ]

82:                                               ; preds = %80, %80
  %83 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @decode_fint(%struct.TYPE_31__* %83, %struct.TYPE_29__* %84, i32 %85)
  store i32 %86, i32* %12, align 4
  br label %116

87:                                               ; preds = %80
  %88 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @decode_kfrm(%struct.TYPE_31__* %88, %struct.TYPE_29__* %89, i32 %90)
  store i32 %91, i32* %12, align 4
  br label %116

92:                                               ; preds = %80
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @decode_dlta(%struct.TYPE_31__* %93, %struct.TYPE_29__* %94, i32 %95)
  store i32 %96, i32* %12, align 4
  br label %116

97:                                               ; preds = %80
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @decode_move(%struct.TYPE_31__* %98, %struct.TYPE_29__* %99, i32 %100)
  store i32 %101, i32* %12, align 4
  br label %116

102:                                              ; preds = %80
  %103 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @decode_mous(%struct.TYPE_31__* %103, %struct.TYPE_29__* %104, i32 %105)
  store i32 %106, i32* %12, align 4
  br label %116

107:                                              ; preds = %80
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @decode_mpos(%struct.TYPE_31__* %108, %struct.TYPE_29__* %109, i32 %110)
  store i32 %111, i32* %12, align 4
  br label %116

112:                                              ; preds = %80
  %113 = load i32*, i32** %11, align 8
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @bytestream2_skip(i32* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %107, %102, %97, %92, %87, %82
  %117 = load i32, i32* %12, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %5, align 4
  br label %211

121:                                              ; preds = %116
  br label %44

122:                                              ; preds = %44
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %122
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %131, %122
  %141 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %141, i32* %5, align 4
  br label %211

142:                                              ; preds = %131
  %143 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_30__*, %struct.TYPE_30__** %145, align 8
  %147 = call i32 @ff_get_buffer(%struct.TYPE_31__* %143, %struct.TYPE_30__* %146, i32 0)
  store i32 %147, i32* %12, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %5, align 4
  br label %211

151:                                              ; preds = %142
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %154, align 8
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %157, align 8
  %159 = call i32 @copy_plane(%struct.TYPE_31__* %152, %struct.TYPE_27__* %155, %struct.TYPE_30__* %158)
  %160 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %181

165:                                              ; preds = %151
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_30__*, %struct.TYPE_30__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @memcpy(i32 %172, i32 %179, i32 1024)
  br label %181

181:                                              ; preds = %165, %151
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %181
  %187 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %188 = call i32 @draw_cursor(%struct.TYPE_31__* %187)
  br label %189

189:                                              ; preds = %186, %181
  %190 = load i32, i32* %13, align 4
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_30__*, %struct.TYPE_30__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %193, i32 0, i32 0
  store i32 %190, i32* %194, align 8
  %195 = load i32, i32* %13, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  br label %201

199:                                              ; preds = %189
  %200 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  br label %201

201:                                              ; preds = %199, %197
  %202 = phi i32 [ %198, %197 ], [ %200, %199 ]
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_30__*, %struct.TYPE_30__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %205, i32 0, i32 1
  store i32 %202, i32* %206, align 4
  %207 = load i32*, i32** %8, align 8
  store i32 1, i32* %207, align 4
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %5, align 4
  br label %211

211:                                              ; preds = %201, %149, %140, %119, %78, %52, %36
  %212 = load i32, i32* %5, align 4
  ret i32 %212
}

declare dso_local i32 @bytestream2_init(i32*, i32, i32) #1

declare dso_local i64 @bytestream2_peek_le32(i32*) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @decode_fint(%struct.TYPE_31__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @decode_kfrm(%struct.TYPE_31__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @decode_dlta(%struct.TYPE_31__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @decode_move(%struct.TYPE_31__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @decode_mous(%struct.TYPE_31__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @decode_mpos(%struct.TYPE_31__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_31__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @copy_plane(%struct.TYPE_31__*, %struct.TYPE_27__*, %struct.TYPE_30__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @draw_cursor(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

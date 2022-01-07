; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_dvc1_structs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_dvc1_structs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_8__*, i32*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [111 x i8] c"moov atom written before any packets, unable to write correct dvc1 atom. Set the delay_moov flag to fix this.\0A\00", align 1
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VC1_CODE_SEQHDR = common dso_local global i64 0, align 8
@PROFILE_ADVANCED = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @mov_write_dvc1_structs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_dvc1_structs(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  store i32* %28, i32** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %14, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %16, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %2
  store i32 1, i32* %15, align 4
  store i32 1, i32* %14, align 4
  %47 = load i32, i32* @AV_LOG_WARNING, align 4
  %48 = call i32 @av_log(i32* null, i32 %47, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %2
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32* @av_mallocz(i32 %54)
  store i32* %55, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = call i32 @AVERROR(i32 %59)
  store i32 %60, i32* %3, align 4
  br label %198

61:                                               ; preds = %49
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32* @find_next_marker(i32* %64, i32* %65)
  store i32* %66, i32** %7, align 8
  %67 = load i32*, i32** %7, align 8
  store i32* %67, i32** %8, align 8
  br label %68

68:                                               ; preds = %119, %61
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = icmp ult i32* %69, %70
  br i1 %71, label %72, label %121

72:                                               ; preds = %68
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load i32*, i32** %9, align 8
  %76 = call i32* @find_next_marker(i32* %74, i32* %75)
  store i32* %76, i32** %8, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = ptrtoint i32* %77 to i64
  %80 = ptrtoint i32* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 4
  %83 = sub nsw i64 %82, 4
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %19, align 4
  %85 = load i32, i32* %19, align 4
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %72
  br label %119

88:                                               ; preds = %72
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  %91 = load i32, i32* %19, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @vc1_unescape_buffer(i32* %90, i32 %91, i32* %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %10, align 4
  %96 = mul nsw i32 8, %95
  %97 = call i32 @init_get_bits(i32* %18, i32* %94, i32 %96)
  %98 = load i32*, i32** %7, align 8
  %99 = call i64 @AV_RB32(i32* %98)
  %100 = load i64, i64* @VC1_CODE_SEQHDR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %88
  %103 = call i32 @get_bits(i32* %18, i32 2)
  store i32 %103, i32* %20, align 4
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* @PROFILE_ADVANCED, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @av_free(i32* %108)
  %110 = load i32, i32* @ENOSYS, align 4
  %111 = call i32 @AVERROR(i32 %110)
  store i32 %111, i32* %3, align 4
  br label %198

112:                                              ; preds = %102
  store i32 1, i32* %11, align 4
  %113 = call i32 @get_bits(i32* %18, i32 3)
  store i32 %113, i32* %12, align 4
  %114 = call i32 @skip_bits_long(i32* %18, i32 35)
  %115 = call i32 @skip_bits(i32* %18, i32 1)
  %116 = call i32 @get_bits1(i32* %18)
  store i32 %116, i32* %13, align 4
  %117 = call i32 @skip_bits(i32* %18, i32 4)
  br label %118

118:                                              ; preds = %112, %88
  br label %119

119:                                              ; preds = %118, %87
  %120 = load i32*, i32** %8, align 8
  store i32* %120, i32** %7, align 8
  br label %68

121:                                              ; preds = %68
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %121
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @av_free(i32* %125)
  %127 = load i32, i32* @ENOSYS, align 4
  %128 = call i32 @AVERROR(i32 %127)
  store i32 %128, i32* %3, align 4
  br label %198

129:                                              ; preds = %121
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @init_put_bits(i32* %17, i32* %130, i32 7)
  %132 = call i32 @put_bits(i32* %17, i32 4, i32 12)
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @put_bits(i32* %17, i32 3, i32 %133)
  %135 = call i32 @put_bits(i32* %17, i32 1, i32 0)
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @put_bits(i32* %17, i32 3, i32 %136)
  %138 = call i32 @put_bits(i32* %17, i32 1, i32 0)
  %139 = call i32 @put_bits(i32* %17, i32 6, i32 0)
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i32 @put_bits(i32* %17, i32 1, i32 %143)
  %145 = load i32, i32* %14, align 4
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = call i32 @put_bits(i32* %17, i32 1, i32 %148)
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = call i32 @put_bits(i32* %17, i32 1, i32 %153)
  %155 = load i32, i32* %16, align 4
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = call i32 @put_bits(i32* %17, i32 1, i32 %158)
  %160 = call i32 @put_bits(i32* %17, i32 1, i32 0)
  %161 = call i32 @put_bits(i32* %17, i32 1, i32 0)
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %192

169:                                              ; preds = %129
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %169
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = sdiv i32 %183, %189
  %191 = call i32 @put_bits32(i32* %17, i32 %190)
  br label %194

192:                                              ; preds = %169, %129
  %193 = call i32 @put_bits32(i32* %17, i32 -1)
  br label %194

194:                                              ; preds = %192, %177
  %195 = call i32 @flush_put_bits(i32* %17)
  %196 = load i32*, i32** %6, align 8
  %197 = call i32 @av_free(i32* %196)
  store i32 0, i32* %3, align 4
  br label %198

198:                                              ; preds = %194, %124, %107, %58
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @find_next_marker(i32*, i32*) #1

declare dso_local i32 @vc1_unescape_buffer(i32*, i32, i32*) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i64 @AV_RB32(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @init_put_bits(i32*, i32*, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @put_bits32(i32*, i32) #1

declare dso_local i32 @flush_put_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

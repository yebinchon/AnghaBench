; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_ca4i.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_ca4i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32*, i64* }

@__const.decode_ca4i.pred = private unnamed_addr constant [4 x i32] [i32 502, i32 512, i32 512, i32 502], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*)* @decode_ca4i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_ca4i(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* %2, i32** %6, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %7, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 3
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %11, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %8, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %9, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 2
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %10, align 8
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %238, %3
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %241

52:                                               ; preds = %46
  %53 = load i32*, i32** %6, align 8
  %54 = call i64 @get_bits1(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %92

56:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %88, %56
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %57
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @get_bits(i32* %64, i32 10)
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @get_bits(i32* %70, i32 10)
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @get_bits(i32* %76, i32 10)
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @get_bits(i32* %82, i32 10)
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %63
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %57

91:                                               ; preds = %57
  br label %201

92:                                               ; preds = %52
  %93 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %93, i8* align 16 bitcast ([4 x i32]* @__const.decode_ca4i.pred to i8*), i64 16, i1 false)
  store i32 0, i32* %12, align 4
  br label %94

94:                                               ; preds = %197, %92
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %200

100:                                              ; preds = %94
  %101 = load i32*, i32** %6, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @get_vlc2(i32* %101, i32 %107, i32 %113, i32 2)
  store i32 %114, i32* %18, align 4
  %115 = load i32*, i32** %6, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @get_vlc2(i32* %115, i32 %121, i32 %127, i32 2)
  store i32 %128, i32* %15, align 4
  %129 = load i32*, i32** %6, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 1
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @get_vlc2(i32* %129, i32 %135, i32 %141, i32 2)
  store i32 %142, i32* %16, align 4
  %143 = load i32*, i32** %6, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i64 1
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @get_vlc2(i32* %143, i32 %149, i32 %155, i32 2)
  store i32 %156, i32* %17, align 4
  %157 = load i32, i32* %18, align 4
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %157, %159
  %161 = and i32 %160, 1023
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  store i32 %161, i32* %162, align 4
  %163 = load i32*, i32** %11, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %161, i32* %166, align 4
  %167 = load i32, i32* %15, align 4
  %168 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %169 = load i32, i32* %168, align 16
  %170 = add nsw i32 %167, %169
  %171 = and i32 %170, 1023
  %172 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 %171, i32* %172, align 16
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %171, i32* %176, align 4
  %177 = load i32, i32* %16, align 4
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %177, %179
  %181 = and i32 %180, 1023
  %182 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  store i32 %181, i32* %182, align 4
  %183 = load i32*, i32** %9, align 8
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %181, i32* %186, align 4
  %187 = load i32, i32* %17, align 4
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %187, %189
  %191 = and i32 %190, 1023
  %192 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  store i32 %191, i32* %192, align 8
  %193 = load i32*, i32** %10, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  store i32 %191, i32* %196, align 4
  br label %197

197:                                              ; preds = %100
  %198 = load i32, i32* %12, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %12, align 4
  br label %94

200:                                              ; preds = %94
  br label %201

201:                                              ; preds = %200, %91
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = sdiv i32 %206, 2
  %208 = load i32*, i32** %8, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  store i32* %210, i32** %8, align 8
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = sdiv i32 %215, 2
  %217 = load i32*, i32** %9, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  store i32* %219, i32** %9, align 8
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 2
  %224 = load i32, i32* %223, align 4
  %225 = sdiv i32 %224, 2
  %226 = load i32*, i32** %10, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32* %228, i32** %10, align 8
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 3
  %233 = load i32, i32* %232, align 4
  %234 = sdiv i32 %233, 2
  %235 = load i32*, i32** %11, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  store i32* %237, i32** %11, align 8
  br label %238

238:                                              ; preds = %201
  %239 = load i32, i32* %13, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %13, align 4
  br label %46

241:                                              ; preds = %46
  ret void
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

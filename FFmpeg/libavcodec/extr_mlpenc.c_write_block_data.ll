; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_write_block_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_write_block_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_9__*, %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32*, i32 }

@MAX_CHANNELS = common dso_local global i32 0, align 4
@ff_mlp_huffman_tables = common dso_local global i32*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*)* @write_block_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_block_data(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %5, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %6, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %7, align 8
  %27 = load i32, i32* @MAX_CHANNELS, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %8, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %9, align 8
  %31 = load i32, i32* @MAX_CHANNELS, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %10, align 8
  %34 = load i32, i32* @MAX_CHANNELS, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %11, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %118, %2
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ule i32 %41, %44
  br i1 %45, label %46, label %121

46:                                               ; preds = %40
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %51
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %14, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %55, %62
  %64 = load i32, i32* %13, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %36, i64 %65
  store i32 %63, i32* %66, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* %13, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %33, i64 %72
  store i32 %70, i32* %73, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %13, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %30, i64 %78
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* %13, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %36, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %15, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %46
  %90 = load i32, i32* %13, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %36, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 7, %93
  %95 = load i32, i32* %13, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %30, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, %94
  store i32 %99, i32* %97, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 3, %102
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %15, align 4
  br label %106

106:                                              ; preds = %89, %46
  %107 = load i32, i32* %15, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load i32, i32* %15, align 4
  %111 = shl i32 1, %110
  %112 = load i32, i32* %13, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %30, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, %111
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %109, %106
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %13, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %13, align 4
  br label %40

121:                                              ; preds = %40
  store i32 0, i32* %12, align 4
  br label %122

122:                                              ; preds = %212, %121
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp ult i32 %123, %126
  br i1 %127, label %128, label %215

128:                                              ; preds = %122
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %13, align 4
  br label %132

132:                                              ; preds = %206, %128
  %133 = load i32, i32* %13, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp ule i32 %133, %136
  br i1 %137, label %138, label %209

138:                                              ; preds = %132
  %139 = load i32*, i32** %7, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %7, align 8
  %141 = load i32, i32* %139, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %13, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = ashr i32 %141, %148
  store i32 %149, i32* %16, align 4
  %150 = load i32, i32* %13, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %30, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %16, align 4
  %155 = sub nsw i32 %154, %153
  store i32 %155, i32* %16, align 4
  %156 = load i32, i32* %13, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %33, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %198

161:                                              ; preds = %138
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %13, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %36, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = ashr i32 %162, %166
  store i32 %167, i32* %17, align 4
  %168 = load i32*, i32** %4, align 8
  %169 = load i32***, i32**** @ff_mlp_huffman_tables, align 8
  %170 = load i32, i32* %13, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %33, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32**, i32*** %169, i64 %174
  %176 = load i32**, i32*** %175, align 8
  %177 = load i32, i32* %17, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32*, i32** %176, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32***, i32**** @ff_mlp_huffman_tables, align 8
  %184 = load i32, i32* %13, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %33, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32**, i32*** %183, i64 %188
  %190 = load i32**, i32*** %189, align 8
  %191 = load i32, i32* %17, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32*, i32** %190, i64 %192
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @put_bits(i32* %168, i32 %182, i32 %196)
  br label %198

198:                                              ; preds = %161, %138
  %199 = load i32*, i32** %4, align 8
  %200 = load i32, i32* %13, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %36, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %16, align 4
  %205 = call i32 @put_sbits(i32* %199, i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %198
  %207 = load i32, i32* %13, align 4
  %208 = add i32 %207, 1
  store i32 %208, i32* %13, align 4
  br label %132

209:                                              ; preds = %132
  %210 = load i32*, i32** %7, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 2
  store i32* %211, i32** %7, align 8
  br label %212

212:                                              ; preds = %209
  %213 = load i32, i32* %12, align 4
  %214 = add i32 %213, 1
  store i32 %214, i32* %12, align 4
  br label %122

215:                                              ; preds = %122
  %216 = load i32*, i32** %7, align 8
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  store i32* %216, i32** %218, align 8
  %219 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %219)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @put_bits(i32*, i32, i32) #2

declare dso_local i32 @put_sbits(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

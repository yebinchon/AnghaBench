; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffv1enc.c_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffv1enc.c_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_10__**, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32* }

@CONTEXT_SIZE = common dso_local global i32 0, align 4
@AC_RANGE_CUSTOM_TAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_header(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %9 = load i32, i32* @CONTEXT_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 19
  %15 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %15, i64 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 23
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %7, align 8
  %19 = mul nuw i64 4, %10
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(i32* %12, i32 128, i32 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %110

26:                                               ; preds = %1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @put_symbol(%struct.TYPE_9__* %27, i32* %12, i32 %30, i32 0)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @put_symbol(%struct.TYPE_9__* %32, i32* %12, i32 %35, i32 0)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AC_RANGE_CUSTOM_TAB, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %43

43:                                               ; preds = %64, %42
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 256
  br i1 %45, label %46, label %67

46:                                               ; preds = %43
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %54, %61
  %63 = call i32 @put_symbol(%struct.TYPE_9__* %47, i32* %12, i32 %62, i32 1)
  br label %64

64:                                               ; preds = %46
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %43

67:                                               ; preds = %43
  br label %68

68:                                               ; preds = %67, %26
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @put_symbol(%struct.TYPE_9__* %69, i32* %12, i32 %72, i32 0)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %68
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @put_symbol(%struct.TYPE_9__* %79, i32* %12, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %78, %68
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 22
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @put_rac(%struct.TYPE_9__* %85, i32* %12, i32 %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @put_symbol(%struct.TYPE_9__* %90, i32* %12, i32 %93, i32 0)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @put_symbol(%struct.TYPE_9__* %95, i32* %12, i32 %98, i32 0)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 21
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @put_rac(%struct.TYPE_9__* %100, i32* %12, i32 %103)
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 20
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @write_quant_tables(%struct.TYPE_9__* %105, i32 %108)
  br label %233

110:                                              ; preds = %1
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %113, 3
  br i1 %114, label %115, label %232

115:                                              ; preds = %110
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @put_symbol(%struct.TYPE_9__* %116, i32* %12, i32 %119, i32 0)
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %228, %115
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %231

127:                                              ; preds = %121
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 19
  %130 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %130, i64 %132
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  store %struct.TYPE_10__* %134, %struct.TYPE_10__** %8, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 %139, %142
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 10
  %146 = load i32, i32* %145, align 4
  %147 = sdiv i32 %143, %146
  %148 = call i32 @put_symbol(%struct.TYPE_9__* %135, i32* %12, i32 %147, i32 0)
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 11
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 1
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 12
  %156 = load i32, i32* %155, align 4
  %157 = mul nsw i32 %153, %156
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 13
  %160 = load i32, i32* %159, align 8
  %161 = sdiv i32 %157, %160
  %162 = call i32 @put_symbol(%struct.TYPE_9__* %149, i32* %12, i32 %161, i32 0)
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 14
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 9
  %170 = load i32, i32* %169, align 8
  %171 = mul nsw i32 %167, %170
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 4
  %175 = sdiv i32 %171, %174
  %176 = sub nsw i32 %175, 1
  %177 = call i32 @put_symbol(%struct.TYPE_9__* %163, i32* %12, i32 %176, i32 0)
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 15
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 12
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %182, %185
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 13
  %189 = load i32, i32* %188, align 8
  %190 = sdiv i32 %186, %189
  %191 = sub nsw i32 %190, 1
  %192 = call i32 @put_symbol(%struct.TYPE_9__* %178, i32* %12, i32 %191, i32 0)
  store i32 0, i32* %6, align 4
  br label %193

193:                                              ; preds = %224, %127
  %194 = load i32, i32* %6, align 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 16
  %197 = load i32, i32* %196, align 4
  %198 = icmp slt i32 %194, %197
  br i1 %198, label %199, label %227

199:                                              ; preds = %193
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 18
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @put_symbol(%struct.TYPE_9__* %200, i32* %12, i32 %208, i32 0)
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 18
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %211, align 8
  %213 = load i32, i32* %6, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 17
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %217, %220
  %222 = zext i1 %221 to i32
  %223 = call i32 @av_assert0(i32 %222)
  br label %224

224:                                              ; preds = %199
  %225 = load i32, i32* %6, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %6, align 4
  br label %193

227:                                              ; preds = %193
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %5, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %5, align 4
  br label %121

231:                                              ; preds = %121
  br label %232

232:                                              ; preds = %231, %110
  br label %233

233:                                              ; preds = %232, %84
  %234 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %234)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @put_symbol(%struct.TYPE_9__*, i32*, i32, i32) #2

declare dso_local i32 @put_rac(%struct.TYPE_9__*, i32*, i32) #2

declare dso_local i32 @write_quant_tables(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @av_assert0(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

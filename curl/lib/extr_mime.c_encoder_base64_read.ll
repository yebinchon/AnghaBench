; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_mime.c_encoder_base64_read.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_mime.c_encoder_base64_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32* }

@MAX_ENCODED_LINE_LENGTH = common dso_local global i32 0, align 4
@base64 = common dso_local global i8** null, align 8
@READ_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32, %struct.TYPE_5__*)* @encoder_base64_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @encoder_base64_read(i8* %0, i64 %1, i32 %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %9, align 8
  store i64 0, i64* %10, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %12, align 8
  br label %16

16:                                               ; preds = %59, %4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %143

24:                                               ; preds = %16
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MAX_ENCODED_LINE_LENGTH, align 4
  %29 = sub nsw i32 %28, 4
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = icmp ult i64 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %143

35:                                               ; preds = %31
  %36 = load i8*, i8** %12, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %12, align 8
  store i8 13, i8* %36, align 1
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %12, align 8
  store i8 10, i8* %38, align 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 0, i32* %41, align 8
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 2
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %6, align 8
  %45 = sub i64 %44, 2
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %35, %24
  %47 = load i64, i64* %6, align 8
  %48 = icmp ult i64 %47, 4
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = icmp slt i64 %56, 3
  br i1 %57, label %58, label %59

58:                                               ; preds = %49, %46
  br label %143

59:                                               ; preds = %49
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = getelementptr inbounds i32, i32* %62, i64 %65
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 255
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = shl i32 %70, 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  %79 = getelementptr inbounds i32, i32* %74, i64 %77
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 255
  %82 = or i32 %71, %81
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = shl i32 %83, 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = getelementptr inbounds i32, i32* %87, i64 %90
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 255
  %95 = or i32 %84, %94
  store i32 %95, i32* %11, align 4
  %96 = load i8**, i8*** @base64, align 8
  %97 = load i32, i32* %11, align 4
  %98 = ashr i32 %97, 18
  %99 = and i32 %98, 63
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %96, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = ptrtoint i8* %102 to i8
  %104 = load i8*, i8** %12, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %12, align 8
  store i8 %103, i8* %104, align 1
  %106 = load i8**, i8*** @base64, align 8
  %107 = load i32, i32* %11, align 4
  %108 = ashr i32 %107, 12
  %109 = and i32 %108, 63
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %106, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = ptrtoint i8* %112 to i8
  %114 = load i8*, i8** %12, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %12, align 8
  store i8 %113, i8* %114, align 1
  %116 = load i8**, i8*** @base64, align 8
  %117 = load i32, i32* %11, align 4
  %118 = ashr i32 %117, 6
  %119 = and i32 %118, 63
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %116, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = ptrtoint i8* %122 to i8
  %124 = load i8*, i8** %12, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %12, align 8
  store i8 %123, i8* %124, align 1
  %126 = load i8**, i8*** @base64, align 8
  %127 = load i32, i32* %11, align 4
  %128 = and i32 %127, 63
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %126, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = ptrtoint i8* %131 to i8
  %133 = load i8*, i8** %12, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %12, align 8
  store i8 %132, i8* %133, align 1
  %135 = load i64, i64* %10, align 8
  %136 = add i64 %135, 4
  store i64 %136, i64* %10, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 4
  store i32 %140, i32* %138, align 8
  %141 = load i64, i64* %6, align 8
  %142 = sub i64 %141, 4
  store i64 %142, i64* %6, align 8
  br label %16

143:                                              ; preds = %58, %34, %16
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %237

146:                                              ; preds = %143
  %147 = load i64, i64* %6, align 8
  %148 = icmp uge i64 %147, 4
  br i1 %148, label %149, label %237

149:                                              ; preds = %146
  %150 = load i8*, i8** %12, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 3
  store i8 61, i8* %151, align 1
  %152 = load i8*, i8** %12, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 2
  store i8 61, i8* %153, align 1
  store i32 0, i32* %11, align 4
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = sub nsw i64 %156, %159
  switch i64 %160, label %236 [
    i64 2, label %161
    i64 1, label %173
  ]

161:                                              ; preds = %149
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, 1
  %169 = getelementptr inbounds i32, i32* %164, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 255
  %172 = shl i32 %171, 8
  store i32 %172, i32* %11, align 4
  br label %173

173:                                              ; preds = %149, %161
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, 255
  %183 = shl i32 %182, 16
  %184 = load i32, i32* %11, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %11, align 4
  %186 = load i8**, i8*** @base64, align 8
  %187 = load i32, i32* %11, align 4
  %188 = ashr i32 %187, 18
  %189 = and i32 %188, 63
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %186, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = ptrtoint i8* %192 to i8
  %194 = load i8*, i8** %12, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 0
  store i8 %193, i8* %195, align 1
  %196 = load i8**, i8*** @base64, align 8
  %197 = load i32, i32* %11, align 4
  %198 = ashr i32 %197, 12
  %199 = and i32 %198, 63
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %196, i64 %200
  %202 = load i8*, i8** %201, align 8
  %203 = ptrtoint i8* %202 to i8
  %204 = load i8*, i8** %12, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 1
  store i8 %203, i8* %205, align 1
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %208, 1
  store i64 %209, i64* %207, align 8
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %209, %212
  br i1 %213, label %214, label %229

214:                                              ; preds = %173
  %215 = load i8**, i8*** @base64, align 8
  %216 = load i32, i32* %11, align 4
  %217 = ashr i32 %216, 6
  %218 = and i32 %217, 63
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8*, i8** %215, i64 %219
  %221 = load i8*, i8** %220, align 8
  %222 = ptrtoint i8* %221 to i8
  %223 = load i8*, i8** %12, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 2
  store i8 %222, i8* %224, align 1
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, 1
  store i64 %228, i64* %226, align 8
  br label %229

229:                                              ; preds = %214, %173
  %230 = load i64, i64* %10, align 8
  %231 = add i64 %230, 4
  store i64 %231, i64* %10, align 8
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = add nsw i32 %234, 4
  store i32 %235, i32* %233, align 8
  br label %236

236:                                              ; preds = %149, %229
  br label %237

237:                                              ; preds = %236, %146, %143
  %238 = load i64, i64* %10, align 8
  ret i64 %238
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

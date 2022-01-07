; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_decode_PAT.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_decode_PAT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"decode_PAT - Bad program section length (> 1024)\00", align 1
@kMaxNumberPMTStreams = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @decode_PAT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_PAT(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 48
  %24 = ashr i32 %23, 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %205

28:                                               ; preds = %2
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 184, i32* %9, align 4
  br label %41

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %35, %32
  br label %41

41:                                               ; preds = %40, %31
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %9, align 4
  %44 = icmp sgt i32 %43, 184
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %205

46:                                               ; preds = %42
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 4, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 64
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  store i32 1, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %46
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %104

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 184, %67
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %104

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, 184
  %73 = load i32, i32* %9, align 4
  %74 = sub i32 %72, %73
  %75 = load i32, i32* %11, align 4
  %76 = sub i32 %74, %75
  %77 = icmp ugt i32 %76, 1024
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = call i32 @hb_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %205

80:                                               ; preds = %70
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %9, align 4
  %94 = sub nsw i32 184, %93
  %95 = load i32, i32* %11, align 4
  %96 = sub nsw i32 %94, %95
  %97 = call i32 @memcpy(i8* %84, i32* %92, i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = sub nsw i32 184, %98
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %99, %100
  %102 = load i32, i32* %7, align 4
  %103 = add i32 %102, %101
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %80, %66, %63
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %204

107:                                              ; preds = %104
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %204

110:                                              ; preds = %107
  %111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %112 = load i32, i32* %7, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i32*, i32** %4, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 4
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %11, align 4
  %122 = sub nsw i32 %121, 1
  %123 = call i32 @memcpy(i8* %114, i32* %120, i32 %122)
  store i32 0, i32* %13, align 4
  %124 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %125 = load i32, i32* %13, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %13, align 4
  %130 = sub i32 %128, %129
  %131 = call i32 @bits_init(i32* %14, i8* %127, i32 %130, i32 0)
  %132 = call i8* @bits_get(i32* %14, i32 8)
  %133 = ptrtoint i8* %132 to i8
  store i8 %133, i8* %15, align 1
  %134 = call i8* @bits_get(i32* %14, i32 4)
  %135 = call i8* @bits_get(i32* %14, i32 12)
  %136 = ptrtoint i8* %135 to i32
  store i32 %136, i32* %16, align 4
  %137 = call i8* @bits_get(i32* %14, i32 16)
  %138 = call i8* @bits_get(i32* %14, i32 2)
  %139 = call i8* @bits_get(i32* %14, i32 5)
  %140 = call i8* @bits_get(i32* %14, i32 1)
  %141 = call i8* @bits_get(i32* %14, i32 8)
  %142 = call i8* @bits_get(i32* %14, i32 8)
  %143 = load i8, i8* %15, align 1
  %144 = zext i8 %143 to i32
  switch i32 %144, label %203 [
    i32 0, label %145
    i32 199, label %201
    i32 200, label %202
  ]

145:                                              ; preds = %110
  %146 = load i32, i32* %16, align 4
  %147 = sub i32 %146, 5
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %16, align 4
  %149 = sub i32 %148, 4
  store i32 %149, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  store i64 0, i64* %151, align 8
  br label %152

152:                                              ; preds = %193, %145
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %16, align 4
  %155 = icmp ult i32 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %152
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @kMaxNumberPMTStreams, align 8
  %161 = icmp ult i64 %159, %160
  br label %162

162:                                              ; preds = %156, %152
  %163 = phi i1 [ false, %152 ], [ %161, %156 ]
  br i1 %163, label %164, label %200

164:                                              ; preds = %162
  %165 = call i8* @bits_get(i32* %14, i32 16)
  %166 = ptrtoint i8* %165 to i32
  store i32 %166, i32* %18, align 4
  %167 = load i32, i32* %18, align 4
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  store i32 %167, i32* %175, align 4
  %176 = call i8* @bits_get(i32* %14, i32 3)
  %177 = load i32, i32* %18, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %164
  %180 = call i8* @bits_get(i32* %14, i32 13)
  br label %193

181:                                              ; preds = %164
  %182 = call i8* @bits_get(i32* %14, i32 13)
  %183 = ptrtoint i8* %182 to i32
  store i32 %183, i32* %19, align 4
  %184 = load i32, i32* %19, align 4
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  store i32 %184, i32* %192, align 4
  br label %193

193:                                              ; preds = %181, %179
  %194 = load i32, i32* %17, align 4
  %195 = add nsw i32 %194, 4
  store i32 %195, i32* %17, align 4
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %197, align 8
  br label %152

200:                                              ; preds = %162
  br label %203

201:                                              ; preds = %110
  br label %203

202:                                              ; preds = %110
  br label %203

203:                                              ; preds = %110, %202, %201, %200
  br label %204

204:                                              ; preds = %203, %107, %104
  store i32 1, i32* %3, align 4
  br label %205

205:                                              ; preds = %204, %78, %45, %27
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @hb_log(i8*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @bits_init(i32*, i8*, i32, i32) #1

declare dso_local i8* @bits_get(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

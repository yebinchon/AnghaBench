; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/ogg/extr_bitwise.c_oggpackB_write.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/ogg/extr_bitwise.c_oggpackB_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64*, i64*, i32 }

@LONG_MAX = common dso_local global i32 0, align 4
@BUFFER_INCREMENT = common dso_local global i32 0, align 4
@mask = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oggpackB_write(%struct.TYPE_4__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 32
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  br label %196

14:                                               ; preds = %10
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 4
  %22 = icmp sge i32 %17, %21
  br i1 %22, label %23, label %71

23:                                               ; preds = %14
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i64*, i64** %25, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %199

29:                                               ; preds = %23
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @LONG_MAX, align 4
  %34 = load i32, i32* @BUFFER_INCREMENT, align 4
  %35 = sub nsw i32 %33, %34
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %196

38:                                               ; preds = %29
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i64*, i64** %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BUFFER_INCREMENT, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i8* @_ogg_realloc(i64* %41, i32 %46)
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %38
  br label %196

51:                                               ; preds = %38
  %52 = load i8*, i8** %7, align 8
  %53 = bitcast i8* %52 to i64*
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  store i64* %53, i64** %55, align 8
  %56 = load i32, i32* @BUFFER_INCREMENT, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i64*, i64** %62, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %63, i64 %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i64* %68, i64** %70, align 8
  br label %71

71:                                               ; preds = %51, %14
  %72 = load i64, i64* %5, align 8
  %73 = load i64*, i64** @mask, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = and i64 %72, %77
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 32, %79
  %81 = zext i32 %80 to i64
  %82 = shl i64 %78, %81
  store i64 %82, i64* %5, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load i64, i64* %5, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 24, %91
  %93 = zext i32 %92 to i64
  %94 = lshr i64 %88, %93
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  %99 = load i64, i64* %98, align 8
  %100 = or i64 %99, %94
  store i64 %100, i64* %98, align 8
  %101 = load i32, i32* %6, align 4
  %102 = icmp sge i32 %101, 8
  br i1 %102, label %103, label %178

103:                                              ; preds = %71
  %104 = load i64, i64* %5, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 16, %107
  %109 = zext i32 %108 to i64
  %110 = lshr i64 %104, %109
  %111 = trunc i64 %110 to i8
  %112 = zext i8 %111 to i64
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 1
  store i64 %112, i64* %116, align 8
  %117 = load i32, i32* %6, align 4
  %118 = icmp sge i32 %117, 16
  br i1 %118, label %119, label %177

119:                                              ; preds = %103
  %120 = load i64, i64* %5, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 8, %123
  %125 = zext i32 %124 to i64
  %126 = lshr i64 %120, %125
  %127 = trunc i64 %126 to i8
  %128 = zext i8 %127 to i64
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 2
  store i64 %128, i64* %132, align 8
  %133 = load i32, i32* %6, align 4
  %134 = icmp sge i32 %133, 24
  br i1 %134, label %135, label %176

135:                                              ; preds = %119
  %136 = load i64, i64* %5, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = zext i32 %139 to i64
  %141 = lshr i64 %136, %140
  %142 = trunc i64 %141 to i8
  %143 = zext i8 %142 to i64
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 3
  store i64 %143, i64* %147, align 8
  %148 = load i32, i32* %6, align 4
  %149 = icmp sge i32 %148, 32
  br i1 %149, label %150, label %175

150:                                              ; preds = %135
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %150
  %156 = load i64, i64* %5, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = sub nsw i32 8, %159
  %161 = zext i32 %160 to i64
  %162 = shl i64 %156, %161
  %163 = trunc i64 %162 to i8
  %164 = zext i8 %163 to i64
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  %167 = load i64*, i64** %166, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 4
  store i64 %164, i64* %168, align 8
  br label %174

169:                                              ; preds = %150
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 2
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 4
  store i64 0, i64* %173, align 8
  br label %174

174:                                              ; preds = %169, %155
  br label %175

175:                                              ; preds = %174, %135
  br label %176

176:                                              ; preds = %175, %119
  br label %177

177:                                              ; preds = %176, %103
  br label %178

178:                                              ; preds = %177, %71
  %179 = load i32, i32* %6, align 4
  %180 = sdiv i32 %179, 8
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, %180
  store i32 %184, i32* %182, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sdiv i32 %185, 8
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 2
  %189 = load i64*, i64** %188, align 8
  %190 = sext i32 %186 to i64
  %191 = getelementptr inbounds i64, i64* %189, i64 %190
  store i64* %191, i64** %188, align 8
  %192 = load i32, i32* %6, align 4
  %193 = and i32 %192, 7
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 4
  store i32 %193, i32* %195, align 8
  br label %199

196:                                              ; preds = %50, %37, %13
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %198 = call i32 @oggpack_writeclear(%struct.TYPE_4__* %197)
  br label %199

199:                                              ; preds = %196, %178, %28
  ret void
}

declare dso_local i8* @_ogg_realloc(i64*, i32) #1

declare dso_local i32 @oggpack_writeclear(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

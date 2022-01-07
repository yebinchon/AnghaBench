; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mdct_template.c_ff_imdct_half_c_fixed.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mdct_template.c_ff_imdct_half_c_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i8**, i8**, i32, i32 (%struct.TYPE_6__*, %struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_imdct_half_c(%struct.TYPE_6__* %0, i8** %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %13, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i8**, i8*** %27, align 8
  store i8** %28, i8*** %14, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i8**, i8*** %30, align 8
  store i8** %31, i8*** %15, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = bitcast i8** %32 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %18, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 1, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = ashr i32 %38, 1
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = ashr i32 %40, 2
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %11, align 4
  %43 = ashr i32 %42, 3
  store i32 %43, i32* %8, align 4
  %44 = load i8**, i8*** %6, align 8
  store i8** %44, i8*** %16, align 8
  %45 = load i8**, i8*** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = getelementptr inbounds i8*, i8** %48, i64 -1
  store i8** %49, i8*** %17, align 8
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %91, %3
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %94

54:                                               ; preds = %50
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %12, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load i8**, i8*** %17, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = load i8**, i8*** %16, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i8**, i8*** %14, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = load i8**, i8*** %15, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @CMUL(i8* %65, i8* %71, i8* %73, i8* %75, i8* %80, i8* %85)
  %87 = load i8**, i8*** %16, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 2
  store i8** %88, i8*** %16, align 8
  %89 = load i8**, i8*** %17, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 -2
  store i8** %90, i8*** %17, align 8
  br label %91

91:                                               ; preds = %54
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %50

94:                                               ; preds = %50
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 4
  %97 = load i32 (%struct.TYPE_6__*, %struct.TYPE_7__*)*, i32 (%struct.TYPE_6__*, %struct.TYPE_7__*)** %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %100 = call i32 %97(%struct.TYPE_6__* %98, %struct.TYPE_7__* %99)
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %210, %94
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %213

105:                                              ; preds = %101
  %106 = load i8*, i8** %19, align 8
  %107 = load i8*, i8** %22, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %7, align 4
  %111 = sub nsw i32 %109, %110
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %7, align 4
  %120 = sub nsw i32 %118, %119
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i8**, i8*** %15, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %7, align 4
  %129 = sub nsw i32 %127, %128
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %126, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = load i8**, i8*** %14, align 8
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %7, align 4
  %137 = sub nsw i32 %135, %136
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %134, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @CMUL(i8* %106, i8* %107, i8* %116, i8* %125, i8* %133, i8* %141)
  %143 = load i8*, i8** %21, align 8
  %144 = load i8*, i8** %20, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = load i8**, i8*** %15, align 8
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %162, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %161, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = load i8**, i8*** %14, align 8
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %168, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @CMUL(i8* %143, i8* %144, i8* %152, i8* %160, i8* %167, i8* %174)
  %176 = load i8*, i8** %19, align 8
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %7, align 4
  %180 = sub nsw i32 %178, %179
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  store i8* %176, i8** %184, align 8
  %185 = load i8*, i8** %20, align 8
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %7, align 4
  %189 = sub nsw i32 %187, %188
  %190 = sub nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  store i8* %185, i8** %193, align 8
  %194 = load i8*, i8** %21, align 8
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %196, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  store i8* %194, i8** %201, align 8
  %202 = load i8*, i8** %22, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* %7, align 4
  %206 = add nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  store i8* %202, i8** %209, align 8
  br label %210

210:                                              ; preds = %105
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %7, align 4
  br label %101

213:                                              ; preds = %101
  ret void
}

declare dso_local i32 @CMUL(i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

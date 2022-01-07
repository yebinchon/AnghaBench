; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_TextField_Paint.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_TextField_Paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 (i64, i32, i32, double*, i8*, i32, i32, i32)*, i32 (i64, i32, i32, double*, i8*, i32, i8, i32, i32)*, i64 (...)*, i32 (i64, i8*, i32)* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, i64*, i64, i64, i64 }
%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { double* }
%struct.TYPE_13__ = type { i32, i32 }

@DC = common dso_local global %struct.TYPE_14__* null, align 8
@WINDOW_HASFOCUS = common dso_local global i32 0, align 4
@PULSE_DIVISOR = common dso_local global i32 0, align 4
@g_editingField = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Item_TextField_Paint(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8, align 1
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %7, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 8
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %8, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = call i32 @Item_Text_Paint(%struct.TYPE_12__* %18)
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %20, align 16
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 4
  %28 = load i32 (i64, i8*, i32)*, i32 (i64, i8*, i32)** %27, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %33 = call i32 %28(i64 %31, i8* %32, i32 1024)
  br label %34

34:                                               ; preds = %25, %1
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %7, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %93

46:                                               ; preds = %34
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load double*, double** %48, align 8
  %50 = getelementptr inbounds double, double* %49, i64 0
  %51 = load double, double* %50, align 8
  %52 = fmul double 8.000000e-01, %51
  %53 = load double*, double** %5, align 8
  %54 = getelementptr inbounds double, double* %53, i64 0
  store double %52, double* %54, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load double*, double** %56, align 8
  %58 = getelementptr inbounds double, double* %57, i64 1
  %59 = load double, double* %58, align 8
  %60 = fmul double 8.000000e-01, %59
  %61 = load double*, double** %5, align 8
  %62 = getelementptr inbounds double, double* %61, i64 1
  store double %60, double* %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load double*, double** %64, align 8
  %66 = getelementptr inbounds double, double* %65, i64 2
  %67 = load double, double* %66, align 8
  %68 = fmul double 8.000000e-01, %67
  %69 = load double*, double** %5, align 8
  %70 = getelementptr inbounds double, double* %69, i64 2
  store double %68, double* %70, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load double*, double** %72, align 8
  %74 = getelementptr inbounds double, double* %73, i64 3
  %75 = load double, double* %74, align 8
  %76 = fmul double 8.000000e-01, %75
  %77 = load double*, double** %5, align 8
  %78 = getelementptr inbounds double, double* %77, i64 3
  store double %76, double* %78, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load double*, double** %80, align 8
  %82 = load double*, double** %5, align 8
  %83 = load double*, double** %4, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @PULSE_DIVISOR, align 4
  %88 = sdiv i32 %86, %87
  %89 = call double @sin(i32 %88)
  %90 = fmul double 5.000000e-01, %89
  %91 = fadd double 5.000000e-01, %90
  %92 = call i32 @LerpColor(double* %81, double* %82, double* %83, double %91)
  br label %98

93:                                               ; preds = %34
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = call i32 @memcpy(double** %4, i32* %96, i32 8)
  br label %98

98:                                               ; preds = %93, %46
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 5
  %101 = load i64*, i64** %100, align 8
  %102 = icmp ne i64* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 5
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br label %109

109:                                              ; preds = %103, %98
  %110 = phi i1 [ false, %98 ], [ %108, %103 ]
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 8, i32 0
  store i32 %112, i32* %6, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %176

120:                                              ; preds = %109
  %121 = load i64, i64* @g_editingField, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %176

123:                                              ; preds = %120
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 3
  %126 = load i64 (...)*, i64 (...)** %125, align 8
  %127 = call i64 (...) %126()
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 95, i32 124
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %9, align 1
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 2
  %134 = load i32 (i64, i32, i32, double*, i8*, i32, i8, i32, i32)*, i32 (i64, i32, i32, double*, i8*, i32, i8, i32, i32)** %133, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %138, %142
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %143, %145
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load double*, double** %4, align 8
  %155 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %155, i64 %159
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %163, %166
  %168 = load i8, i8* %9, align 1
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 %134(i64 %146, i32 %150, i32 %153, double* %154, i8* %160, i32 %167, i8 signext %168, i32 %171, i32 %174)
  br label %213

176:                                              ; preds = %120, %109
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  %179 = load i32 (i64, i32, i32, double*, i8*, i32, i32, i32)*, i32 (i64, i32, i32, double*, i8*, i32, i32, i32)** %178, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %183, %187
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %188, %190
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load double*, double** %4, align 8
  %200 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %200, i64 %204
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 %179(i64 %191, i32 %195, i32 %198, double* %199, i8* %205, i32 0, i32 %208, i32 %211)
  br label %213

213:                                              ; preds = %176, %123
  ret void
}

declare dso_local i32 @Item_Text_Paint(%struct.TYPE_12__*) #1

declare dso_local i32 @LerpColor(double*, double*, double*, double) #1

declare dso_local double @sin(i32) #1

declare dso_local i32 @memcpy(double**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

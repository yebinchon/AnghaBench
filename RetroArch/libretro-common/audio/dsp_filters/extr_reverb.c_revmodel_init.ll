; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_reverb.c_revmodel_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_reverb.c_revmodel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revmodel = type { %struct.TYPE_4__*, i8**, %struct.TYPE_3__*, i8** }
%struct.TYPE_4__ = type { double, float, i8* }
%struct.TYPE_3__ = type { double, i8* }

@revmodel_init.comb_lengths = internal constant [8 x i32] [i32 1116, i32 1188, i32 1277, i32 1356, i32 1422, i32 1491, i32 1557, i32 1617], align 16
@revmodel_init.allpass_lengths = internal constant [4 x i32] [i32 225, i32 341, i32 441, i32 556], align 16
@numcombs = common dso_local global i32 0, align 4
@numallpasses = common dso_local global i32 0, align 4
@initialwet = common dso_local global i32 0, align 4
@initialroom = common dso_local global i32 0, align 4
@initialdry = common dso_local global i32 0, align 4
@initialdamp = common dso_local global i32 0, align 4
@initialwidth = common dso_local global i32 0, align 4
@initialmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.revmodel*, i32)* @revmodel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @revmodel_init(%struct.revmodel* %0, i32 %1) #0 {
  %3 = alloca %struct.revmodel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store %struct.revmodel* %0, %struct.revmodel** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sitofp i32 %7 to double
  %9 = fmul double %8, 0x3EF7C6F8C751F177
  store double %9, double* %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %75, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @numcombs, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %78

14:                                               ; preds = %10
  %15 = load double, double* %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* @revmodel_init.comb_lengths, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = sitofp i32 %19 to double
  %21 = fmul double %15, %20
  %22 = fmul double %21, 4.000000e+00
  %23 = call i8* @malloc(double %22)
  %24 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %25 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %24, i32 0, i32 3
  %26 = load i8**, i8*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  store i8* %23, i8** %29, align 8
  %30 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %31 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %30, i32 0, i32 3
  %32 = load i8**, i8*** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %38 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i8* %36, i8** %43, align 8
  %44 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %45 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load double, double* %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* @revmodel_init.comb_lengths, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sitofp i32 %56 to double
  %58 = fmul double %52, %57
  %59 = fmul double %58, 4.000000e+00
  %60 = call i32 @memset(i8* %51, i32 0, double %59)
  %61 = load double, double* %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* @revmodel_init.comb_lengths, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sitofp i32 %65 to double
  %67 = fmul double %61, %66
  %68 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %69 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store double %67, double* %74, align 8
  br label %75

75:                                               ; preds = %14
  %76 = load i32, i32* %6, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %10

78:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %151, %78
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @numallpasses, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %154

83:                                               ; preds = %79
  %84 = load double, double* %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* @revmodel_init.allpass_lengths, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sitofp i32 %88 to double
  %90 = fmul double %84, %89
  %91 = fmul double %90, 4.000000e+00
  %92 = call i8* @malloc(double %91)
  %93 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %94 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %93, i32 0, i32 1
  %95 = load i8**, i8*** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  store i8* %92, i8** %98, align 8
  %99 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %100 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %99, i32 0, i32 1
  %101 = load i8**, i8*** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %107 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  store i8* %105, i8** %112, align 8
  %113 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %114 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = load double, double* %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* @revmodel_init.allpass_lengths, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = sitofp i32 %125 to double
  %127 = fmul double %121, %126
  %128 = fmul double %127, 4.000000e+00
  %129 = call i32 @memset(i8* %120, i32 0, double %128)
  %130 = load double, double* %5, align 8
  %131 = load i32, i32* %6, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* @revmodel_init.allpass_lengths, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sitofp i32 %134 to double
  %136 = fmul double %130, %135
  %137 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %138 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store double %136, double* %143, align 8
  %144 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %145 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  store float 5.000000e-01, float* %150, align 8
  br label %151

151:                                              ; preds = %83
  %152 = load i32, i32* %6, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %6, align 4
  br label %79

154:                                              ; preds = %79
  %155 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %156 = load i32, i32* @initialwet, align 4
  %157 = call i32 @revmodel_setwet(%struct.revmodel* %155, i32 %156)
  %158 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %159 = load i32, i32* @initialroom, align 4
  %160 = call i32 @revmodel_setroomsize(%struct.revmodel* %158, i32 %159)
  %161 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %162 = load i32, i32* @initialdry, align 4
  %163 = call i32 @revmodel_setdry(%struct.revmodel* %161, i32 %162)
  %164 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %165 = load i32, i32* @initialdamp, align 4
  %166 = call i32 @revmodel_setdamp(%struct.revmodel* %164, i32 %165)
  %167 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %168 = load i32, i32* @initialwidth, align 4
  %169 = call i32 @revmodel_setwidth(%struct.revmodel* %167, i32 %168)
  %170 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %171 = load i32, i32* @initialmode, align 4
  %172 = call i32 @revmodel_setmode(%struct.revmodel* %170, i32 %171)
  ret void
}

declare dso_local i8* @malloc(double) #1

declare dso_local i32 @memset(i8*, i32, double) #1

declare dso_local i32 @revmodel_setwet(%struct.revmodel*, i32) #1

declare dso_local i32 @revmodel_setroomsize(%struct.revmodel*, i32) #1

declare dso_local i32 @revmodel_setdry(%struct.revmodel*, i32) #1

declare dso_local i32 @revmodel_setdamp(%struct.revmodel*, i32) #1

declare dso_local i32 @revmodel_setwidth(%struct.revmodel*, i32) #1

declare dso_local i32 @revmodel_setmode(%struct.revmodel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

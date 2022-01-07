; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_switch_gfx.c_switch_set_texture_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_switch_gfx.c_switch_set_texture_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, %struct.scaler_ctx }
%struct.scaler_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"failed to allocate buffer for menu texture\0A\00", align 1
@SCALER_FMT_ARGB8888 = common dso_local global i32 0, align 4
@SCALER_FMT_RGB565 = common dso_local global i32 0, align 4
@SCALER_FMT_ABGR8888 = common dso_local global i32 0, align 4
@SCALER_TYPE_POINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"failed to generate scaler for menu texture\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, float)* @switch_set_texture_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_set_texture_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, float %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca %struct.scaler_ctx*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %13, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %6
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %158

39:                                               ; preds = %32, %25, %6
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @free(i64 %49)
  br label %51

51:                                               ; preds = %45, %39
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = mul i32 %52, %53
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 4, i32 2
  %59 = mul i32 %54, %58
  %60 = call i64 @malloc(i32 %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  store i64 %60, i64* %63, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %51
  %70 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %173

71:                                               ; preds = %51
  %72 = load i32, i32* %10, align 4
  %73 = udiv i32 1280, %72
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %11, align 4
  %75 = udiv i32 720, %74
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %15, align 4
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* %17, align 4
  br label %82

82:                                               ; preds = %80, %71
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %17, align 4
  %93 = mul i32 %91, %92
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %17, align 4
  %99 = mul i32 %97, %98
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 5
  store %struct.scaler_ctx* %105, %struct.scaler_ctx** %14, align 8
  %106 = load %struct.scaler_ctx*, %struct.scaler_ctx** %14, align 8
  %107 = call i32 @scaler_ctx_gen_reset(%struct.scaler_ctx* %106)
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.scaler_ctx*, %struct.scaler_ctx** %14, align 8
  %110 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.scaler_ctx*, %struct.scaler_ctx** %14, align 8
  %113 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 4, i32 2
  %119 = mul i32 %114, %118
  %120 = load %struct.scaler_ctx*, %struct.scaler_ctx** %14, align 8
  %121 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %82
  %125 = load i32, i32* @SCALER_FMT_ARGB8888, align 4
  br label %128

126:                                              ; preds = %82
  %127 = load i32, i32* @SCALER_FMT_RGB565, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %130 = load %struct.scaler_ctx*, %struct.scaler_ctx** %14, align 8
  %131 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %130, i32 0, i32 8
  store i32 %129, i32* %131, align 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.scaler_ctx*, %struct.scaler_ctx** %14, align 8
  %137 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.scaler_ctx*, %struct.scaler_ctx** %14, align 8
  %143 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 4
  %144 = load %struct.scaler_ctx*, %struct.scaler_ctx** %14, align 8
  %145 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %144, i32 0, i32 5
  store i32 5120, i32* %145, align 4
  %146 = load i32, i32* @SCALER_FMT_ABGR8888, align 4
  %147 = load %struct.scaler_ctx*, %struct.scaler_ctx** %14, align 8
  %148 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %147, i32 0, i32 7
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* @SCALER_TYPE_POINT, align 4
  %150 = load %struct.scaler_ctx*, %struct.scaler_ctx** %14, align 8
  %151 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %150, i32 0, i32 6
  store i32 %149, i32* %151, align 4
  %152 = load %struct.scaler_ctx*, %struct.scaler_ctx** %14, align 8
  %153 = call i32 @scaler_ctx_gen_filter(%struct.scaler_ctx* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %128
  %156 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %173

157:                                              ; preds = %128
  br label %158

158:                                              ; preds = %157, %32
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = load i8*, i8** %8, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %11, align 4
  %166 = mul i32 %164, %165
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 4, i32 2
  %171 = mul i32 %166, %170
  %172 = call i32 @memcpy(i64 %162, i8* %163, i32 %171)
  br label %173

173:                                              ; preds = %158, %155, %69
  ret void
}

declare dso_local i32 @free(i64) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @scaler_ctx_gen_reset(%struct.scaler_ctx*) #1

declare dso_local i32 @scaler_ctx_gen_filter(%struct.scaler_ctx*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

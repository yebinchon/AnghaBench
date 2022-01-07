; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_switch_nx_gfx.c_switch_set_texture_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_switch_nx_gfx.c_switch_set_texture_frame.c"
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
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.scaler_ctx*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %13, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = mul i32 %21, %22
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 4, i32 2
  %28 = mul i32 %23, %27
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %14, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %6
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %163

49:                                               ; preds = %42, %35, %6
  store %struct.scaler_ctx* null, %struct.scaler_ctx** %18, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %14, align 8
  %61 = call i32 @realloc(i64 %59, i64 %60)
  br label %68

62:                                               ; preds = %49
  %63 = load i64, i64* %14, align 8
  %64 = call i64 @malloc(i64 %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  store i64 %64, i64* %67, align 8
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %171

76:                                               ; preds = %68
  %77 = load i32, i32* %10, align 4
  %78 = udiv i32 1280, %77
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %11, align 4
  %80 = udiv i32 720, %79
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* %16, align 4
  store i32 %86, i32* %17, align 4
  br label %87

87:                                               ; preds = %85, %76
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %17, align 4
  %98 = mul i32 %96, %97
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  store i32 %98, i32* %101, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %17, align 4
  %104 = mul i32 %102, %103
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  store i32 %104, i32* %107, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 5
  store %struct.scaler_ctx* %110, %struct.scaler_ctx** %18, align 8
  %111 = load %struct.scaler_ctx*, %struct.scaler_ctx** %18, align 8
  %112 = call i32 @scaler_ctx_gen_reset(%struct.scaler_ctx* %111)
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.scaler_ctx*, %struct.scaler_ctx** %18, align 8
  %115 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.scaler_ctx*, %struct.scaler_ctx** %18, align 8
  %118 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 4, i32 2
  %124 = mul i32 %119, %123
  %125 = load %struct.scaler_ctx*, %struct.scaler_ctx** %18, align 8
  %126 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %87
  %130 = load i32, i32* @SCALER_FMT_ARGB8888, align 4
  br label %133

131:                                              ; preds = %87
  %132 = load i32, i32* @SCALER_FMT_RGB565, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = load %struct.scaler_ctx*, %struct.scaler_ctx** %18, align 8
  %136 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %135, i32 0, i32 8
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.scaler_ctx*, %struct.scaler_ctx** %18, align 8
  %142 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.scaler_ctx*, %struct.scaler_ctx** %18, align 8
  %148 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 4
  %149 = load %struct.scaler_ctx*, %struct.scaler_ctx** %18, align 8
  %150 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %149, i32 0, i32 5
  store i32 5120, i32* %150, align 4
  %151 = load i32, i32* @SCALER_FMT_ABGR8888, align 4
  %152 = load %struct.scaler_ctx*, %struct.scaler_ctx** %18, align 8
  %153 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %152, i32 0, i32 7
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @SCALER_TYPE_POINT, align 4
  %155 = load %struct.scaler_ctx*, %struct.scaler_ctx** %18, align 8
  %156 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %155, i32 0, i32 6
  store i32 %154, i32* %156, align 4
  %157 = load %struct.scaler_ctx*, %struct.scaler_ctx** %18, align 8
  %158 = call i32 @scaler_ctx_gen_filter(%struct.scaler_ctx* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %133
  %161 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %171

162:                                              ; preds = %133
  br label %163

163:                                              ; preds = %162, %42
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = load i8*, i8** %8, align 8
  %169 = load i64, i64* %14, align 8
  %170 = call i32 @memcpy(i64 %167, i8* %168, i64 %169)
  br label %171

171:                                              ; preds = %163, %160, %74
  ret void
}

declare dso_local i32 @realloc(i64, i64) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @scaler_ctx_gen_reset(%struct.scaler_ctx*) #1

declare dso_local i32 @scaler_ctx_gen_filter(%struct.scaler_ctx*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

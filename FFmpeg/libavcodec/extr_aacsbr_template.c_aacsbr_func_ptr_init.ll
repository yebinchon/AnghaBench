; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_aacsbr_func_ptr_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_aacsbr_func_ptr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@sbr_lf_gen = common dso_local global i32 0, align 4
@sbr_hf_assemble = common dso_local global i32 0, align 4
@sbr_x_gen = common dso_local global i32 0, align 4
@sbr_hf_inverse_filter = common dso_local global i32 0, align 4
@ARCH_MIPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @aacsbr_func_ptr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aacsbr_func_ptr_init(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load i32, i32* @sbr_lf_gen, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @sbr_hf_assemble, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @sbr_x_gen, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @sbr_hf_inverse_filter, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i64, i64* @ARCH_MIPS, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = call i32 @ff_aacsbr_func_ptr_init_mips(%struct.TYPE_4__* %18)
  br label %20

20:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @ff_aacsbr_func_ptr_init_mips(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

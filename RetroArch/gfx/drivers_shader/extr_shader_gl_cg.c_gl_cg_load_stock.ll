; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_gl_cg.c_gl_cg_load_stock.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_gl_cg.c_gl_cg_load_stock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_program_info = type { i32, i32 }
%struct.TYPE_2__ = type { i32* }

@stock_cg_gl_program = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Failed to compile passthrough shader, is something wrong with your environment?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gl_cg_load_stock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_cg_load_stock(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.shader_program_info, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %5, align 8
  %8 = load i32, i32* @stock_cg_gl_program, align 4
  %9 = getelementptr inbounds %struct.shader_program_info, %struct.shader_program_info* %4, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.shader_program_info, %struct.shader_program_info* %4, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = call i32 @gl_cg_compile_program(i8* %11, i32 0, i32* %15, %struct.shader_program_info* %4)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %22

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @gl_cg_set_program_base_attrib(i8* %20, i32 0)
  store i32 1, i32* %2, align 4
  br label %24

22:                                               ; preds = %18
  %23 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @gl_cg_compile_program(i8*, i32, i32*, %struct.shader_program_info*) #1

declare dso_local i32 @gl_cg_set_program_base_attrib(i8*, i32) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_x_ctx.c_gfx_ctx_x_input_driver.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_x_ctx.c_gfx_ctx_x_input_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* (i8*)* }

@input_x = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@input_udev = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.TYPE_10__**, i8**)* @gfx_ctx_x_input_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_ctx_x_input_driver(i8* %0, i8* %1, %struct.TYPE_10__** %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %7, align 8
  store i8** %3, i8*** %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load i8* (i8*)*, i8* (i8*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @input_x, i32 0, i32 0), align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* %10(i8* %11)
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp ne i8* %13, null
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, %struct.TYPE_10__* @input_x, %struct.TYPE_10__* null
  %17 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %17, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i8**, i8*** %8, align 8
  store i8* %18, i8** %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

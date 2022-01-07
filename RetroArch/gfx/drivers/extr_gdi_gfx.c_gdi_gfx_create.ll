; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gdi_gfx.c_gdi_gfx_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gdi_gfx.c_gdi_gfx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8*, i32, i32*, i32*)* }

@.str = private unnamed_addr constant [33 x i8] c"[GDI] No frontend driver found.\0A\00", align 1
@gdi_win_major = common dso_local global i32 0, align 4
@gdi_win_minor = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"[GDI] Win98 or lower detected, using slow frame conversion method for RGB444.\0A\00", align 1
@gdi_lte_win98 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gdi_gfx_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdi_gfx_create() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = bitcast [64 x i8]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 64, i1 false)
  %4 = call %struct.TYPE_3__* (...) @frontend_get_ptr()
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32 (i8*, i32, i32*, i32*)*, i32 (i8*, i32, i32*, i32*)** %9, align 8
  %11 = icmp ne i32 (i8*, i32, i32*, i32*)* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7, %0
  %13 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %30

14:                                               ; preds = %7
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (i8*, i32, i32*, i32*)*, i32 (i8*, i32, i32*, i32*)** %16, align 8
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %19 = call i32 %17(i8* %18, i32 64, i32* @gdi_win_major, i32* @gdi_win_minor)
  %20 = load i32, i32* @gdi_win_major, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %28, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @gdi_win_major, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* @gdi_win_minor, align 4
  %27 = icmp sle i32 %26, 10
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %14
  %29 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @gdi_lte_win98, align 4
  br label %30

30:                                               ; preds = %12, %28, %25, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_3__* @frontend_get_ptr(...) #2

declare dso_local i32 @RARCH_ERR(i8*) #2

declare dso_local i32 @RARCH_LOG(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

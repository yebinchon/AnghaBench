; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_ctr_gfx.c_ctr_set_bottom_screen_enable.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_ctr_gfx.c_ctr_set_bottom_screen_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@currentConsole = external dso_local global %struct.TYPE_4__*, align 8
@gfxBottomFramebuffers = common dso_local global i64** null, align 8
@.str = private unnamed_addr constant [9 x i8] c"gsp::Lcd\00", align 1
@ctr_bottom_screen_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ctr_set_bottom_screen_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctr_set_bottom_screen_enable(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %7, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %53

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @currentConsole, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i64*
  br label %27

22:                                               ; preds = %14
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i64*
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i64* [ %21, %17 ], [ %26, %22 ]
  %29 = load i64**, i64*** @gfxBottomFramebuffers, align 8
  %30 = getelementptr inbounds i64*, i64** %29, i64 0
  store i64* %28, i64** %30, align 8
  %31 = call i32 @CFGU_GetModelNintendo2DS(i64* %6)
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %27
  %35 = call i64 @srvGetServiceHandle(i32* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = call i32* (...) @getThreadCommandBuffer()
  store i32* %38, i32** %8, align 8
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1114176, i32 1179712
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 2, i32* %46, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @svcSendSyncRequest(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @svcCloseHandle(i32 %49)
  br label %51

51:                                               ; preds = %37, %34, %27
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* @ctr_bottom_screen_enabled, align 4
  br label %53

53:                                               ; preds = %51, %13
  ret void
}

declare dso_local i32 @CFGU_GetModelNintendo2DS(i64*) #1

declare dso_local i64 @srvGetServiceHandle(i32*, i8*) #1

declare dso_local i32* @getThreadCommandBuffer(...) #1

declare dso_local i32 @svcSendSyncRequest(i32) #1

declare dso_local i32 @svcCloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

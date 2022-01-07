; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs_out.c_load_eglIntOpenMAXILDoneMarker.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs_out.c_load_eglIntOpenMAXILDoneMarker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VCOS_DL_GLOBAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"eglIntOpenMAXILDoneMarker\00", align 1
@local_eglIntOpenMAXILDoneMarker = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"libEGL.so\00", align 1
@VCOS_DL_LAZY = common dso_local global i32 0, align 4
@VCOS_DL_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @load_eglIntOpenMAXILDoneMarker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_eglIntOpenMAXILDoneMarker() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @VCOS_DL_GLOBAL, align 4
  %3 = call i8* @vcos_dlopen(i8* null, i32 %2)
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = call i64 @vcos_dlsym(i8* %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** @local_eglIntOpenMAXILDoneMarker, align 8
  %8 = load i32*, i32** @local_eglIntOpenMAXILDoneMarker, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %0
  %11 = load i8*, i8** %1, align 8
  %12 = call i32 @vcos_dlclose(i8* %11)
  %13 = load i32, i32* @VCOS_DL_LAZY, align 4
  %14 = load i32, i32* @VCOS_DL_LOCAL, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @vcos_dlopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  store i8* %16, i8** %1, align 8
  %17 = load i8*, i8** %1, align 8
  %18 = icmp ne i8* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @vc_assert(i32 %19)
  %21 = load i8*, i8** %1, align 8
  %22 = call i64 @vcos_dlsym(i8* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** @local_eglIntOpenMAXILDoneMarker, align 8
  %25 = load i32*, i32** @local_eglIntOpenMAXILDoneMarker, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @vc_assert(i32 %27)
  br label %29

29:                                               ; preds = %10, %0
  ret void
}

declare dso_local i8* @vcos_dlopen(i8*, i32) #1

declare dso_local i64 @vcos_dlsym(i8*, i8*) #1

declare dso_local i32 @vcos_dlclose(i8*) #1

declare dso_local i32 @vc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

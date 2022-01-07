; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiresolution.c_yui_resolution_class_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiresolution.c_yui_resolution_class_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@yui_resolution_set_property = common dso_local global i32 0, align 4
@yui_resolution_get_property = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"key-file\00", align 1
@G_PARAM_READABLE = common dso_local global i32 0, align 4
@G_PARAM_WRITABLE = common dso_local global i32 0, align 4
@PROP_KEYFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@PROP_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @yui_resolution_class_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yui_resolution_class_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @yui_resolution_set_property, align 4
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.TYPE_3__* @G_OBJECT_CLASS(i32* %5)
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32 %4, i32* %7, align 4
  %8 = load i32, i32* @yui_resolution_get_property, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call %struct.TYPE_3__* @G_OBJECT_CLASS(i32* %9)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @G_PARAM_READABLE, align 4
  %13 = load i32, i32* @G_PARAM_WRITABLE, align 4
  %14 = or i32 %12, %13
  %15 = call i32* @g_param_spec_pointer(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 %14)
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call %struct.TYPE_3__* @G_OBJECT_CLASS(i32* %16)
  %18 = load i32, i32* @PROP_KEYFILE, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @g_object_class_install_property(%struct.TYPE_3__* %17, i32 %18, i32* %19)
  %21 = load i32, i32* @G_PARAM_READABLE, align 4
  %22 = load i32, i32* @G_PARAM_WRITABLE, align 4
  %23 = or i32 %21, %22
  %24 = call i32* @g_param_spec_pointer(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32 %23)
  store i32* %24, i32** %3, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = call %struct.TYPE_3__* @G_OBJECT_CLASS(i32* %25)
  %27 = load i32, i32* @PROP_GROUP, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @g_object_class_install_property(%struct.TYPE_3__* %26, i32 %27, i32* %28)
  ret void
}

declare dso_local %struct.TYPE_3__* @G_OBJECT_CLASS(i32*) #1

declare dso_local i32* @g_param_spec_pointer(i8*, i32, i32, i32) #1

declare dso_local i32 @g_object_class_install_property(%struct.TYPE_3__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

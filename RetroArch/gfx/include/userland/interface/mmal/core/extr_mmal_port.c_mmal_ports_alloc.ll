; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_ports_alloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_ports_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"mmal ports\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__** @mmal_ports_alloc(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__**, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = trunc i64 %14 to i32
  %16 = call %struct.TYPE_8__** @vcos_calloc(i32 1, i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__** %16, %struct.TYPE_8__*** %10, align 8
  %17 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %18 = icmp ne %struct.TYPE_8__** %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store %struct.TYPE_8__** null, %struct.TYPE_8__*** %5, align 8
  br label %83

20:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %55, %20
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.TYPE_8__* @mmal_port_alloc(i32* %26, i32 %27, i32 %28)
  %30 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %30, i64 %32
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %33, align 8
  %34 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %34, i64 %36
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = icmp ne %struct.TYPE_8__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %25
  br label %58

41:                                               ; preds = %25
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %43, i64 %45
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 %42, i32* %48, align 4
  %49 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %49, i64 %51
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = call i32 @mmal_port_name_update(%struct.TYPE_8__* %53)
  br label %55

55:                                               ; preds = %41
  %56 = load i32, i32* %11, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %21

58:                                               ; preds = %40, %21
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %58
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %75, %62
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %69, i64 %71
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = call i32 @mmal_port_free(%struct.TYPE_8__* %73)
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %11, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %64

78:                                               ; preds = %64
  %79 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %80 = call i32 @vcos_free(%struct.TYPE_8__** %79)
  store %struct.TYPE_8__** null, %struct.TYPE_8__*** %5, align 8
  br label %83

81:                                               ; preds = %58
  %82 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  store %struct.TYPE_8__** %82, %struct.TYPE_8__*** %5, align 8
  br label %83

83:                                               ; preds = %81, %78, %19
  %84 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  ret %struct.TYPE_8__** %84
}

declare dso_local %struct.TYPE_8__** @vcos_calloc(i32, i32, i8*) #1

declare dso_local %struct.TYPE_8__* @mmal_port_alloc(i32*, i32, i32) #1

declare dso_local i32 @mmal_port_name_update(%struct.TYPE_8__*) #1

declare dso_local i32 @mmal_port_free(%struct.TYPE_8__*) #1

declare dso_local i32 @vcos_free(%struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

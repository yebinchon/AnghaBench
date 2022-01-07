; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_uint_alt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_uint_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@ST_UI_TYPE_UINT_SPINBOX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__**, %struct.TYPE_10__*, i32*, i8*, i8*, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i8*, i32, i32)* @config_uint_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_uint_alt(%struct.TYPE_9__** %0, %struct.TYPE_10__* %1, i32* %2, i8* %3, i8* %4, i32 %5, %struct.TYPE_11__* %6, %struct.TYPE_11__* %7, i8* %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.TYPE_9__**, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_9__, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %12, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %13, align 8
  store i32* %2, i32** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %19, align 8
  store i8* %8, i8** %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %24 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i64 %30
  %32 = load i8*, i8** %15, align 8
  %33 = load i8*, i8** %16, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = load i32, i32* %17, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %20, align 8
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* %22, align 4
  %45 = call i32 @setting_uint_setting(i8* %32, i8* %33, i32* %34, i32 %35, i32 %38, i32 %41, i8* %42, i32 %43, i32 %44, i32 1)
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = bitcast %struct.TYPE_9__* %31 to i8*
  %48 = bitcast %struct.TYPE_9__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = load i32, i32* @ST_UI_TYPE_UINT_SPINBOX, align 4
  %50 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32 %49, i32* %58, align 4
  ret void
}

declare dso_local i32 @setting_uint_setting(i8*, i8*, i32*, i32, i32, i32, i8*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

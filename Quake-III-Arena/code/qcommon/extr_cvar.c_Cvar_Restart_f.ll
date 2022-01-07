; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cvar.c_Cvar_Restart_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cvar.c_Cvar_Restart_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__*, i64, i64, i64, i64 }

@cvar_vars = common dso_local global %struct.TYPE_4__* null, align 8
@CVAR_ROM = common dso_local global i32 0, align 4
@CVAR_INIT = common dso_local global i32 0, align 4
@CVAR_NORESTART = common dso_local global i32 0, align 4
@CVAR_USER_CREATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cvar_Restart_f() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca %struct.TYPE_4__**, align 8
  store %struct.TYPE_4__** @cvar_vars, %struct.TYPE_4__*** %2, align 8
  br label %3

3:                                                ; preds = %0, %20, %74, %77
  %4 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %1, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  br label %87

9:                                                ; preds = %3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CVAR_ROM, align 4
  %14 = load i32, i32* @CVAR_INIT, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CVAR_NORESTART, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %12, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %9
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store %struct.TYPE_4__** %22, %struct.TYPE_4__*** %2, align 8
  br label %3

23:                                               ; preds = %9
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CVAR_USER_CREATED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %77

30:                                               ; preds = %23
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @Z_Free(i64 %42)
  br label %44

44:                                               ; preds = %39, %30
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @Z_Free(i64 %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @Z_Free(i64 %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @Z_Free(i64 %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %76 = call i32 @Com_Memset(%struct.TYPE_4__* %75, i32 0, i32 8)
  br label %3

77:                                               ; preds = %23
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @Cvar_Set(i64 %80, i64 %83)
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store %struct.TYPE_4__** %86, %struct.TYPE_4__*** %2, align 8
  br label %3

87:                                               ; preds = %8
  ret void
}

declare dso_local i32 @Z_Free(i64) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @Cvar_Set(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

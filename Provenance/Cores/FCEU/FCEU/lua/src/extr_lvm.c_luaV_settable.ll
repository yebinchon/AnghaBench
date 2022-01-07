; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lvm.c_luaV_settable.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lvm.c_luaV_settable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@MAXTAGLOOP = common dso_local global i32 0, align 4
@TM_NEWINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"loop in settable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaV_settable(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %74, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @MAXTAGLOOP, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %77

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @ttistable(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = call %struct.TYPE_5__* @hvalue(i32* %22)
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %11, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32* @luaH_set(i32* %24, %struct.TYPE_5__* %25, i32* %26)
  store i32* %27, i32** %12, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = call i64 @ttisnil(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TM_NEWINDEX, align 4
  %37 = call i32* @fasttm(i32* %32, i32 %35, i32 %36)
  store i32* %37, i32** %10, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %31, %21
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @setobj2t(i32* %40, i32* %41, i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @luaC_barriert(i32* %44, %struct.TYPE_5__* %45, i32 %46)
  br label %80

48:                                               ; preds = %31
  br label %61

49:                                               ; preds = %17
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @TM_NEWINDEX, align 4
  %53 = call i32* @luaT_gettmbyobj(i32* %50, i32* %51, i32 %52)
  store i32* %53, i32** %10, align 8
  %54 = call i64 @ttisnil(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @luaG_typeerror(i32* %57, i32* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %49
  br label %61

61:                                               ; preds = %60, %48
  %62 = load i32*, i32** %10, align 8
  %63 = call i64 @ttisfunction(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @callTM(i32* %66, i32* %67, i32* %68, i32* %69, i32 %70)
  br label %80

72:                                               ; preds = %61
  %73 = load i32*, i32** %10, align 8
  store i32* %73, i32** %6, align 8
  br label %74

74:                                               ; preds = %72
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %13

77:                                               ; preds = %13
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @luaG_runerror(i32* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %65, %39
  ret void
}

declare dso_local i64 @ttistable(i32*) #1

declare dso_local %struct.TYPE_5__* @hvalue(i32*) #1

declare dso_local i32* @luaH_set(i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i64 @ttisnil(i32*) #1

declare dso_local i32* @fasttm(i32*, i32, i32) #1

declare dso_local i32 @setobj2t(i32*, i32*, i32) #1

declare dso_local i32 @luaC_barriert(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32* @luaT_gettmbyobj(i32*, i32*, i32) #1

declare dso_local i32 @luaG_typeerror(i32*, i32*, i8*) #1

declare dso_local i64 @ttisfunction(i32*) #1

declare dso_local i32 @callTM(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @luaG_runerror(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

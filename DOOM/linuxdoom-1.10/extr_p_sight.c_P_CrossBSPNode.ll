; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_sight.c_P_CrossBSPNode.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_sight.c_P_CrossBSPNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32 }

@NF_SUBSECTOR = common dso_local global i32 0, align 4
@nodes = common dso_local global %struct.TYPE_4__* null, align 8
@strace = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@t2x = common dso_local global i32 0, align 4
@t2y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @P_CrossBSPNode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @NF_SUBSECTOR, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 @P_CrossSubsector(i32 0)
  store i32 %14, i32* %2, align 4
  br label %64

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @NF_SUBSECTOR, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = call i32 @P_CrossSubsector(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %64

21:                                               ; preds = %1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nodes, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %4, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @strace, i32 0, i32 1), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @strace, i32 0, i32 0), align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = bitcast %struct.TYPE_4__* %28 to i32*
  %30 = call i32 @P_DivlineSide(i32 %26, i32 %27, i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %21
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @P_CrossBSPNode(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %64

45:                                               ; preds = %34
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @t2x, align 4
  %48 = load i32, i32* @t2y, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = bitcast %struct.TYPE_4__* %49 to i32*
  %51 = call i32 @P_DivlineSide(i32 %47, i32 %48, i32* %50)
  %52 = icmp eq i32 %46, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %64

54:                                               ; preds = %45
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = xor i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @P_CrossBSPNode(i32 %62)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %54, %53, %44, %15, %13
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @P_CrossSubsector(i32) #1

declare dso_local i32 @P_DivlineSide(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

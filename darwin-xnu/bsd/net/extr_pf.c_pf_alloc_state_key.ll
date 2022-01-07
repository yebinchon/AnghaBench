; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_alloc_state_key.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_alloc_state_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_state = type { i32 }
%struct.pf_state_key = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@pf_state_key_pl = common dso_local global i32 0, align 4
@PR_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pf_state_key* @pf_alloc_state_key(%struct.pf_state* %0, %struct.pf_state_key* %1) #0 {
  %3 = alloca %struct.pf_state_key*, align 8
  %4 = alloca %struct.pf_state*, align 8
  %5 = alloca %struct.pf_state_key*, align 8
  %6 = alloca %struct.pf_state_key*, align 8
  store %struct.pf_state* %0, %struct.pf_state** %4, align 8
  store %struct.pf_state_key* %1, %struct.pf_state_key** %5, align 8
  %7 = load i32, i32* @PR_WAITOK, align 4
  %8 = call %struct.pf_state_key* @pool_get(i32* @pf_state_key_pl, i32 %7)
  store %struct.pf_state_key* %8, %struct.pf_state_key** %6, align 8
  %9 = icmp eq %struct.pf_state_key* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.pf_state_key* null, %struct.pf_state_key** %3, align 8
  br label %86

11:                                               ; preds = %2
  %12 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %13 = call i32 @bzero(%struct.pf_state_key* %12, i32 56)
  %14 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %15 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %14, i32 0, i32 12
  %16 = call i32 @TAILQ_INIT(i32* %15)
  %17 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %18 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %19 = call i32 @pf_attach_state(%struct.pf_state_key* %17, %struct.pf_state* %18, i32 0)
  %20 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %21 = icmp ne %struct.pf_state_key* %20, null
  br i1 %21, label %22, label %84

22:                                               ; preds = %11
  %23 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %24 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %23, i32 0, i32 11
  %25 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %26 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %25, i32 0, i32 11
  %27 = call i32 @bcopy(i32* %24, i32* %26, i32 4)
  %28 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %29 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %28, i32 0, i32 10
  %30 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %31 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %30, i32 0, i32 10
  %32 = call i32 @bcopy(i32* %29, i32* %31, i32 4)
  %33 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %34 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %33, i32 0, i32 9
  %35 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %36 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %35, i32 0, i32 9
  %37 = call i32 @bcopy(i32* %34, i32* %36, i32 4)
  %38 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %39 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %38, i32 0, i32 8
  %40 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %41 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %40, i32 0, i32 8
  %42 = call i32 @bcopy(i32* %39, i32* %41, i32 4)
  %43 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %44 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %47 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  %48 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %49 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %52 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %54 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %57 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %59 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %62 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %64 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %67 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %69 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  %72 = zext i1 %71 to i32
  %73 = call i32 @VERIFY(i32 %72)
  %74 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %75 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %78 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %80 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  %83 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %22, %11
  %85 = load %struct.pf_state_key*, %struct.pf_state_key** %6, align 8
  store %struct.pf_state_key* %85, %struct.pf_state_key** %3, align 8
  br label %86

86:                                               ; preds = %84, %10
  %87 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  ret %struct.pf_state_key* %87
}

declare dso_local %struct.pf_state_key* @pool_get(i32*, i32) #1

declare dso_local i32 @bzero(%struct.pf_state_key*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @pf_attach_state(%struct.pf_state_key*, %struct.pf_state*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

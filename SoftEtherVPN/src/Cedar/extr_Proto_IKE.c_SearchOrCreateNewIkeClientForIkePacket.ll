; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_SearchOrCreateNewIkeClientForIkePacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_SearchOrCreateNewIkeClientForIkePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@IKE_QUOTA_MAX_NUM_CLIENTS_PER_IP = common dso_local global i64 0, align 8
@IKE_QUOTA_MAX_NUM_CLIENTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SearchOrCreateNewIkeClientForIkePacket(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = icmp eq %struct.TYPE_7__* %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %6
  %18 = load i32*, i32** %13, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %17
  %21 = load i32*, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** %11, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26, %23, %20, %17, %6
  store i32* null, i32** %7, align 8
  br label %77

33:                                               ; preds = %29
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = call i32* @SearchIkeClientForIkePacket(%struct.TYPE_7__* %34, i32* %35, i32 %36, i32* %37, i32 %38, i32* %39)
  store i32* %40, i32** %14, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %69

43:                                               ; preds = %33
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i64 @GetNumberOfIkeClientsFromIP(%struct.TYPE_7__* %44, i32* %45)
  %47 = load i64, i64* @IKE_QUOTA_MAX_NUM_CLIENTS_PER_IP, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @LIST_NUM(i32 %52)
  %54 = load i64, i64* @IKE_QUOTA_MAX_NUM_CLIENTS, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %43
  store i32* null, i32** %7, align 8
  br label %77

57:                                               ; preds = %49
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32* @NewIkeClient(%struct.TYPE_7__* %58, i32* %59, i32 %60, i32* %61, i32 %62)
  store i32* %63, i32** %14, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %14, align 8
  %68 = call i32 @Insert(i32 %66, i32* %67)
  br label %69

69:                                               ; preds = %57, %33
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i32* @SetIkeClientEndpoint(%struct.TYPE_7__* %70, i32* %71, i32* %72, i32 %73, i32* %74, i32 %75)
  store i32* %76, i32** %7, align 8
  br label %77

77:                                               ; preds = %69, %56, %32
  %78 = load i32*, i32** %7, align 8
  ret i32* %78
}

declare dso_local i32* @SearchIkeClientForIkePacket(%struct.TYPE_7__*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i64 @GetNumberOfIkeClientsFromIP(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i32* @NewIkeClient(%struct.TYPE_7__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @Insert(i32, i32*) #1

declare dso_local i32* @SetIkeClientEndpoint(%struct.TYPE_7__*, i32*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

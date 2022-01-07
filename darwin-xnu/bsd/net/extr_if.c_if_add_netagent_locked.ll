; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_add_netagent_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_add_netagent_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64, i32* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IF_MAXAGENTS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@IF_AGENT_INCREMENT = common dso_local global i64 0, align 8
@M_NETAGENT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32)* @if_add_netagent_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_add_netagent_locked(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %52

17:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %48, %17
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %18
  %25 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @uuid_compare(i32 %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %8, align 4
  br label %51

37:                                               ; preds = %24
  %38 = load i32*, i32** %6, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @uuid_is_null(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32*, i32** %9, align 8
  store i32* %46, i32** %6, align 8
  br label %47

47:                                               ; preds = %45, %40, %37
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %7, align 8
  br label %18

51:                                               ; preds = %35, %18
  br label %52

52:                                               ; preds = %51, %2
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %112

56:                                               ; preds = %52
  %57 = load i32*, i32** %6, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %105

59:                                               ; preds = %56
  %60 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IF_MAXAGENTS, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @ENOMEM, align 4
  store i32 %66, i32* %3, align 4
  br label %112

67:                                               ; preds = %59
  %68 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %69 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IF_AGENT_INCREMENT, align 8
  %72 = add i64 %70, %71
  %73 = load i64, i64* @IF_MAXAGENTS, align 8
  %74 = call i64 @MIN(i64 %72, i64 %73)
  store i64 %74, i64* %10, align 8
  %75 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %76 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = mul i64 4, %78
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* @M_NETAGENT, align 4
  %82 = load i32, i32* @M_WAITOK, align 4
  %83 = load i32, i32* @M_ZERO, align 4
  %84 = or i32 %82, %83
  %85 = call i32* @_REALLOC(i32* %77, i32 %80, i32 %81, i32 %84)
  store i32* %85, i32** %11, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %67
  %89 = load i32, i32* @ENOMEM, align 4
  store i32 %89, i32* %3, align 4
  br label %112

90:                                               ; preds = %67
  %91 = load i32*, i32** %11, align 8
  %92 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %93 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %92, i32 0, i32 1
  store i32* %91, i32** %93, align 8
  %94 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %95 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %98 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  store i32* %100, i32** %6, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %103 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104, %56
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @uuid_copy(i32 %107, i32 %108)
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @netagent_post_updated_interfaces(i32 %110)
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %105, %88, %65, %55
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @uuid_compare(i32, i32) #1

declare dso_local i64 @uuid_is_null(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32* @_REALLOC(i32*, i32, i32, i32) #1

declare dso_local i32 @uuid_copy(i32, i32) #1

declare dso_local i32 @netagent_post_updated_interfaces(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

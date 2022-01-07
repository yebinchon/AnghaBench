; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_names_helper.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_names_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64 }
%struct.TYPE_10__ = type { i32 }

@MACH_PORT_TYPE_RECEIVE = common dso_local global i32 0, align 4
@IE_REQ_NONE = common dso_local global i64 0, align 8
@MACH_PORT_TYPE_SEND_RIGHTS = common dso_local global i32 0, align 4
@IE_BITS_TYPE_MASK = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_DEAD_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mach_port_names_helper(i32 %0, %struct.TYPE_11__* %1, i32 %2, i32* %3, i32* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64* %5, i64** %12, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %13, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %14, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %17, align 8
  %29 = call i32 @__IGNORE_WCASTALIGN(%struct.TYPE_10__* %28)
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %6
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %36 = call i64 @IP_VALID(%struct.TYPE_10__* %35)
  %37 = call i32 @assert(i64 %36)
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* @IE_REQ_NONE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %34
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %43 = call i32 @ip_lock(%struct.TYPE_10__* %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %45 = call i64 @ip_active(%struct.TYPE_10__* %44)
  %46 = call i32 @assert(i64 %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i64, i64* %14, align 8
  %50 = call i32 @ipc_port_request_type(%struct.TYPE_10__* %47, i32 %48, i64 %49)
  %51 = load i32, i32* %15, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %15, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %54 = call i32 @ip_unlock(%struct.TYPE_10__* %53)
  br label %55

55:                                               ; preds = %41, %34
  br label %110

56:                                               ; preds = %6
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @MACH_PORT_TYPE_SEND_RIGHTS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %109

61:                                               ; preds = %56
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %63 = call i64 @IP_VALID(%struct.TYPE_10__* %62)
  %64 = call i32 @assert(i64 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %66 = call i32 @ip_lock(%struct.TYPE_10__* %65)
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* @IE_REQ_NONE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i64, i64* %14, align 8
  %74 = call i32 @ipc_port_request_type(%struct.TYPE_10__* %71, i32 %72, i64 %73)
  br label %76

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %70
  %77 = phi i32 [ %74, %70 ], [ 0, %75 ]
  store i32 %77, i32* %18, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %79 = call i64 @ip_active(%struct.TYPE_10__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @IP_TIMESTAMP_ORDER(i32 %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81, %76
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %15, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %15, align 4
  br label %106

92:                                               ; preds = %81
  %93 = load i32, i32* @IE_BITS_TYPE_MASK, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %13, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* @MACH_PORT_TYPE_DEAD_NAME, align 4
  %98 = load i32, i32* %13, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %18, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %92
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %102, %92
  br label %106

106:                                              ; preds = %105, %88
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %108 = call i32 @ip_unlock(%struct.TYPE_10__* %107)
  br label %109

109:                                              ; preds = %106, %56
  br label %110

110:                                              ; preds = %109, %55
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @IE_BITS_TYPE(i32 %111)
  %113 = load i32, i32* %15, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %15, align 4
  %115 = load i64*, i64** %12, align 8
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %16, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32*, i32** %10, align 8
  %119 = load i64, i64* %16, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* %15, align 4
  %122 = load i32*, i32** %11, align 8
  %123 = load i64, i64* %16, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32 %121, i32* %124, align 4
  %125 = load i64, i64* %16, align 8
  %126 = add i64 %125, 1
  %127 = load i64*, i64** %12, align 8
  store i64 %126, i64* %127, align 8
  ret void
}

declare dso_local i32 @__IGNORE_WCASTALIGN(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i64 @IP_VALID(%struct.TYPE_10__*) #1

declare dso_local i32 @ip_lock(%struct.TYPE_10__*) #1

declare dso_local i64 @ip_active(%struct.TYPE_10__*) #1

declare dso_local i32 @ipc_port_request_type(%struct.TYPE_10__*, i32, i64) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_10__*) #1

declare dso_local i64 @IP_TIMESTAMP_ORDER(i32, i32) #1

declare dso_local i32 @IE_BITS_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

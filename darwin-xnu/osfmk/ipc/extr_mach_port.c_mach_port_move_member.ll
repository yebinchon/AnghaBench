; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_move_member.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_move_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i64 0, align 8
@KERN_INVALID_RIGHT = common dso_local global i64 0, align 8
@MACH_PORT_DEAD = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i32 0, align 4
@WAITQ_DONT_LOCK = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@MACH_PORT_TYPE_RECEIVE = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global i64 0, align 8
@IPS_NULL = common dso_local global i64 0, align 8
@IE_NULL = common dso_local global %struct.TYPE_5__* null, align 8
@KERN_INVALID_NAME = common dso_local global i64 0, align 8
@MACH_PORT_TYPE_PORT_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_port_move_member(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @IS_NULL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @KERN_INVALID_TASK, align 8
  store i64 %18, i64* %4, align 8
  br label %145

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @MACH_PORT_VALID(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* @KERN_INVALID_RIGHT, align 8
  store i64 %24, i64* %4, align 8
  br label %145

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MACH_PORT_DEAD, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i64, i64* @KERN_INVALID_RIGHT, align 8
  store i64 %30, i64* %4, align 8
  br label %145

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @MACH_PORT_NULL, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i64 0, i64* %12, align 8
  br label %48

36:                                               ; preds = %31
  %37 = call i64 @waitq_link_reserve(i32* null)
  store i64 %37, i64* %12, align 8
  %38 = load i32, i32* @WAITQ_DONT_LOCK, align 4
  %39 = call i64 @waitq_prepost_reserve(i32* null, i32 10, i32 %38)
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @ipc_pset_lazy_allocate(i64 %40, i32 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @KERN_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %139

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %35
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @ipc_right_lookup_read(i64 %50, i32 %51, %struct.TYPE_5__** %8)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @KERN_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %139

57:                                               ; preds = %49
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @is_read_unlock(i64 %65)
  %67 = load i64, i64* @KERN_INVALID_RIGHT, align 8
  store i64 %67, i64* %11, align 8
  br label %139

68:                                               ; preds = %57
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %9, align 8
  %72 = call i32 @__IGNORE_WCASTALIGN(i64 %71)
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @IP_NULL, align 8
  %75 = icmp ne i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @MACH_PORT_NULL, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %68
  %82 = load i64, i64* @IPS_NULL, align 8
  store i64 %82, i64* %10, align 8
  br label %115

83:                                               ; preds = %68
  %84 = load i64, i64* %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call %struct.TYPE_5__* @ipc_entry_lookup(i64 %84, i32 %85)
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %8, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @IE_NULL, align 8
  %89 = icmp eq %struct.TYPE_5__* %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load i64, i64* %5, align 8
  %92 = call i32 @is_read_unlock(i64 %91)
  %93 = load i64, i64* @KERN_INVALID_NAME, align 8
  store i64 %93, i64* %11, align 8
  br label %139

94:                                               ; preds = %83
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @MACH_PORT_TYPE_PORT_SET, align 4
  %99 = and i32 %97, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i64, i64* %5, align 8
  %103 = call i32 @is_read_unlock(i64 %102)
  %104 = load i64, i64* @KERN_INVALID_RIGHT, align 8
  store i64 %104, i64* %11, align 8
  br label %139

105:                                              ; preds = %94
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %10, align 8
  %109 = call i32 @__IGNORE_WCASTALIGN(i64 %108)
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* @IPS_NULL, align 8
  %112 = icmp ne i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  br label %115

115:                                              ; preds = %105, %81
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @ip_lock(i64 %116)
  %118 = load i64, i64* %9, align 8
  %119 = call i32 @ip_active(i64 %118)
  %120 = call i32 @assert(i32 %119)
  %121 = load i64, i64* %9, align 8
  %122 = call i32 @ipc_pset_remove_from_all(i64 %121)
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* @IPS_NULL, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %115
  %127 = load i64, i64* %10, align 8
  %128 = call i32 @ips_lock(i64 %127)
  %129 = load i64, i64* %10, align 8
  %130 = load i64, i64* %9, align 8
  %131 = call i64 @ipc_pset_add(i64 %129, i64 %130, i64* %12, i64* %13)
  store i64 %131, i64* %11, align 8
  %132 = load i64, i64* %10, align 8
  %133 = call i32 @ips_unlock(i64 %132)
  br label %134

134:                                              ; preds = %126, %115
  %135 = load i64, i64* %9, align 8
  %136 = call i32 @ip_unlock(i64 %135)
  %137 = load i64, i64* %5, align 8
  %138 = call i32 @is_read_unlock(i64 %137)
  br label %139

139:                                              ; preds = %134, %101, %90, %64, %56, %46
  %140 = load i64, i64* %12, align 8
  %141 = call i32 @waitq_link_release(i64 %140)
  %142 = load i64, i64* %13, align 8
  %143 = call i32 @waitq_prepost_release_reserve(i64 %142)
  %144 = load i64, i64* %11, align 8
  store i64 %144, i64* %4, align 8
  br label %145

145:                                              ; preds = %139, %29, %23, %17
  %146 = load i64, i64* %4, align 8
  ret i64 %146
}

declare dso_local i32 @MACH_PORT_VALID(i32) #1

declare dso_local i64 @waitq_link_reserve(i32*) #1

declare dso_local i64 @waitq_prepost_reserve(i32*, i32, i32) #1

declare dso_local i64 @ipc_pset_lazy_allocate(i64, i32) #1

declare dso_local i64 @ipc_right_lookup_read(i64, i32, %struct.TYPE_5__**) #1

declare dso_local i32 @is_read_unlock(i64) #1

declare dso_local i32 @__IGNORE_WCASTALIGN(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_5__* @ipc_entry_lookup(i64, i32) #1

declare dso_local i32 @ip_lock(i64) #1

declare dso_local i32 @ip_active(i64) #1

declare dso_local i32 @ipc_pset_remove_from_all(i64) #1

declare dso_local i32 @ips_lock(i64) #1

declare dso_local i64 @ipc_pset_add(i64, i64, i64*, i64*) #1

declare dso_local i32 @ips_unlock(i64) #1

declare dso_local i32 @ip_unlock(i64) #1

declare dso_local i32 @waitq_link_release(i64) #1

declare dso_local i32 @waitq_prepost_release_reserve(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

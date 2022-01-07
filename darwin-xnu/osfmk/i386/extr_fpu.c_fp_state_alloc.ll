; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fp_state_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fp_state_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.x86_fx_thread_state = type opaque

@ifps_zone = common dso_local global %struct.TYPE_3__** null, align 8
@fp_state_size = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @fp_state_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fp_state_alloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.x86_fx_thread_state*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @ifps_zone, align 8
  %5 = load i64, i64* %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %4, i64 %5
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @ifps_zone, align 8
  %12 = load i64, i64* %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %11, i64 %12
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = call i8* @zalloc(%struct.TYPE_3__* %14)
  %16 = bitcast i8* %15 to %struct.x86_fx_thread_state*
  store %struct.x86_fx_thread_state* %16, %struct.x86_fx_thread_state** %3, align 8
  %17 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %3, align 8
  %18 = bitcast %struct.x86_fx_thread_state* %17 to i8*
  %19 = load i32*, i32** @fp_state_size, align 8
  %20 = load i64, i64* %2, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bzero(i8* %18, i32 %22)
  %24 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %3, align 8
  %25 = bitcast %struct.x86_fx_thread_state* %24 to i8*
  ret i8* %25
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @zalloc(%struct.TYPE_3__*) #1

declare dso_local i32 @bzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

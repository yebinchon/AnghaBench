; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_eventhandler.c_eventhandler_register.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_eventhandler.c_eventhandler_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventhandler_lists_ctxt = type { i32 }
%struct.eventhandler_list = type { i32 }
%struct.eventhandler_entry_arg = type { i32 }
%struct.eventhandler_entry_generic = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32, %struct.eventhandler_entry_arg }

@eg_cache = common dso_local global i32 0, align 4
@MCR_SLEEP = common dso_local global i32 0, align 4
@eg_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eventhandler_register(%struct.eventhandler_lists_ctxt* %0, %struct.eventhandler_list* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.eventhandler_entry_arg, align 4
  %8 = alloca %struct.eventhandler_lists_ctxt*, align 8
  %9 = alloca %struct.eventhandler_list*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.eventhandler_entry_generic*, align 8
  %14 = getelementptr inbounds %struct.eventhandler_entry_arg, %struct.eventhandler_entry_arg* %7, i32 0, i32 0
  store i32 %4, i32* %14, align 4
  store %struct.eventhandler_lists_ctxt* %0, %struct.eventhandler_lists_ctxt** %8, align 8
  store %struct.eventhandler_list* %1, %struct.eventhandler_list** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @eg_cache, align 4
  %16 = load i32, i32* @MCR_SLEEP, align 4
  %17 = call %struct.eventhandler_entry_generic* @mcache_alloc(i32 %15, i32 %16)
  store %struct.eventhandler_entry_generic* %17, %struct.eventhandler_entry_generic** %13, align 8
  %18 = load %struct.eventhandler_entry_generic*, %struct.eventhandler_entry_generic** %13, align 8
  %19 = load i32, i32* @eg_size, align 4
  %20 = call i32 @bzero(%struct.eventhandler_entry_generic* %18, i32 %19)
  %21 = load i8*, i8** %11, align 8
  %22 = load %struct.eventhandler_entry_generic*, %struct.eventhandler_entry_generic** %13, align 8
  %23 = getelementptr inbounds %struct.eventhandler_entry_generic, %struct.eventhandler_entry_generic* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.eventhandler_entry_generic*, %struct.eventhandler_entry_generic** %13, align 8
  %25 = getelementptr inbounds %struct.eventhandler_entry_generic, %struct.eventhandler_entry_generic* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = bitcast %struct.eventhandler_entry_arg* %26 to i8*
  %28 = bitcast %struct.eventhandler_entry_arg* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.eventhandler_entry_generic*, %struct.eventhandler_entry_generic** %13, align 8
  %31 = getelementptr inbounds %struct.eventhandler_entry_generic, %struct.eventhandler_entry_generic* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.eventhandler_lists_ctxt*, %struct.eventhandler_lists_ctxt** %8, align 8
  %34 = load %struct.eventhandler_list*, %struct.eventhandler_list** %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load %struct.eventhandler_entry_generic*, %struct.eventhandler_entry_generic** %13, align 8
  %37 = getelementptr inbounds %struct.eventhandler_entry_generic, %struct.eventhandler_entry_generic* %36, i32 0, i32 0
  %38 = call i32 @eventhandler_register_internal(%struct.eventhandler_lists_ctxt* %33, %struct.eventhandler_list* %34, i8* %35, %struct.TYPE_2__* %37)
  ret i32 %38
}

declare dso_local %struct.eventhandler_entry_generic* @mcache_alloc(i32, i32) #1

declare dso_local i32 @bzero(%struct.eventhandler_entry_generic*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @eventhandler_register_internal(%struct.eventhandler_lists_ctxt*, %struct.eventhandler_list*, i8*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

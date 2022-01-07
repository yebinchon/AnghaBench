; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map_store_rb.c_vm_map_store_walk_rb.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map_store_rb.c_vm_map_store_walk_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.vm_map_header }
%struct.vm_map_header = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.vm_map_store = type { i32 }

@rb_head = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"NO SUCH ENTRY %p. Gave back %p\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Cur: %p, L: %p, R: %p\00", align 1
@entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_map_store_walk_rb(%struct.TYPE_8__* %0, %struct.TYPE_9__** %1, %struct.TYPE_9__** %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca %struct.TYPE_9__**, align 8
  %7 = alloca %struct.vm_map_header, align 4
  %8 = alloca %struct.vm_map_store*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %5, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %6, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = bitcast %struct.vm_map_header* %7 to i8*
  %13 = bitcast %struct.vm_map_header* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  %14 = getelementptr inbounds %struct.vm_map_header, %struct.vm_map_header* %7, i32 0, i32 0
  %15 = call %struct.vm_map_store* @RB_ROOT(i32* %14)
  store %struct.vm_map_store* %15, %struct.vm_map_store** %8, align 8
  %16 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %9, align 8
  %18 = load i32, i32* @rb_head, align 4
  %19 = getelementptr inbounds %struct.vm_map_header, %struct.vm_map_header* %7, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = call %struct.vm_map_store* @RB_FIND(i32 %18, i32* %19, i32* %21)
  store %struct.vm_map_store* %22, %struct.vm_map_store** %8, align 8
  %23 = load %struct.vm_map_store*, %struct.vm_map_store** %8, align 8
  %24 = icmp eq %struct.vm_map_store* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = call i32 (i8*, %struct.TYPE_9__*, %struct.TYPE_9__*, ...) @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %27, %struct.TYPE_9__* %29)
  br label %47

31:                                               ; preds = %3
  %32 = load %struct.vm_map_store*, %struct.vm_map_store** %8, align 8
  %33 = call i32 @VME_FOR_STORE(%struct.vm_map_store* %32)
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.TYPE_9__*
  %36 = load %struct.vm_map_store*, %struct.vm_map_store** %8, align 8
  %37 = load i32, i32* @entry, align 4
  %38 = call %struct.vm_map_store* @RB_LEFT(%struct.vm_map_store* %36, i32 %37)
  %39 = call i32 @VME_FOR_STORE(%struct.vm_map_store* %38)
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to %struct.TYPE_9__*
  %42 = load %struct.vm_map_store*, %struct.vm_map_store** %8, align 8
  %43 = load i32, i32* @entry, align 4
  %44 = call %struct.vm_map_store* @RB_RIGHT(%struct.vm_map_store* %42, i32 %43)
  %45 = call i32 @VME_FOR_STORE(%struct.vm_map_store* %44)
  %46 = call i32 (i8*, %struct.TYPE_9__*, %struct.TYPE_9__*, ...) @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %35, %struct.TYPE_9__* %41, i32 %45)
  br label %47

47:                                               ; preds = %31, %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.vm_map_store* @RB_ROOT(i32*) #2

declare dso_local %struct.vm_map_store* @RB_FIND(i32, i32*, i32*) #2

declare dso_local i32 @panic(i8*, %struct.TYPE_9__*, %struct.TYPE_9__*, ...) #2

declare dso_local i32 @VME_FOR_STORE(%struct.vm_map_store*) #2

declare dso_local %struct.vm_map_store* @RB_LEFT(%struct.vm_map_store*, i32) #2

declare dso_local %struct.vm_map_store* @RB_RIGHT(%struct.vm_map_store*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

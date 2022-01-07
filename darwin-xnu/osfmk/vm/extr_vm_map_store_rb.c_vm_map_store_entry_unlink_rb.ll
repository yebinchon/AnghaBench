; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map_store_rb.c_vm_map_store_entry_unlink_rb.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map_store_rb.c_vm_map_store_entry_unlink_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_map_header = type { %struct.rb_head }
%struct.rb_head = type { i32 }
%struct.TYPE_3__ = type { %struct.vm_map_store }
%struct.vm_map_store = type { i32 }

@rb_head = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"NO ENTRY TO DELETE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_map_store_entry_unlink_rb(%struct.vm_map_header* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.vm_map_header*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.rb_head*, align 8
  %6 = alloca %struct.vm_map_store*, align 8
  %7 = alloca %struct.vm_map_store*, align 8
  store %struct.vm_map_header* %0, %struct.vm_map_header** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load %struct.vm_map_header*, %struct.vm_map_header** %3, align 8
  %9 = getelementptr inbounds %struct.vm_map_header, %struct.vm_map_header* %8, i32 0, i32 0
  store %struct.rb_head* %9, %struct.rb_head** %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.vm_map_store* %11, %struct.vm_map_store** %7, align 8
  %12 = load i32, i32* @rb_head, align 4
  %13 = load %struct.rb_head*, %struct.rb_head** %5, align 8
  %14 = load %struct.vm_map_store*, %struct.vm_map_store** %7, align 8
  %15 = call %struct.vm_map_store* @RB_FIND(i32 %12, %struct.rb_head* %13, %struct.vm_map_store* %14)
  store %struct.vm_map_store* %15, %struct.vm_map_store** %6, align 8
  %16 = load %struct.vm_map_store*, %struct.vm_map_store** %6, align 8
  %17 = icmp eq %struct.vm_map_store* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i32, i32* @rb_head, align 4
  %22 = load %struct.rb_head*, %struct.rb_head** %5, align 8
  %23 = load %struct.vm_map_store*, %struct.vm_map_store** %7, align 8
  %24 = call i32 @RB_REMOVE(i32 %21, %struct.rb_head* %22, %struct.vm_map_store* %23)
  ret void
}

declare dso_local %struct.vm_map_store* @RB_FIND(i32, %struct.rb_head*, %struct.vm_map_store*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @RB_REMOVE(i32, %struct.rb_head*, %struct.vm_map_store*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

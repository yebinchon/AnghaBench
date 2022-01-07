; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_zero_fill.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_zero_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@XPR_VM_PAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"vm_page_zero_fill, object 0x%X offset 0x%X page 0x%X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_zero_fill(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load i32, i32* @XPR_VM_PAGE, align 4
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = call i32 @VM_PAGE_OBJECT(%struct.TYPE_7__* %4)
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = call i32 @XPR(i32 %3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8, %struct.TYPE_7__* %9, i32 0, i32 0)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_7__* %11)
  %13 = call i32 @pmap_zero_page(i32 %12)
  ret void
}

declare dso_local i32 @XPR(i32, i8*, i32, i32, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @VM_PAGE_OBJECT(%struct.TYPE_7__*) #1

declare dso_local i32 @pmap_zero_page(i32) #1

declare dso_local i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

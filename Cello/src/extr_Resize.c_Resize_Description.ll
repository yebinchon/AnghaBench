; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Resize.c_Resize_Description.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Resize.c_Resize_Description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [400 x i8] c"The `Resize` class can be implemented by objects which can be resized in some way. Resizing to a larger size than the current may allow for some resource or other to be preallocated or reserved. For example this class is implemented by `Array` and `Table` to either remove a number of items quickly or to preallocate memory space if it is known that many items are going to be added at a later date.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @Resize_Description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Resize_Description() #0 {
  ret i8* getelementptr inbounds ([400 x i8], [400 x i8]* @.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Alloc.c_Alloc_Methods.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Alloc.c_Alloc_Methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Method = type { i8*, i8*, i8* }

@Alloc_Methods.methods = internal global [4 x %struct.Method] [%struct.Method { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([228 x i8], [228 x i8]* @.str.2, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([329 x i8], [329 x i8]* @.str.5, i32 0, i32 0) }, %struct.Method { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([214 x i8], [214 x i8]* @.str.8, i32 0, i32 0) }, %struct.Method zeroinitializer], align 16
@.str = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"#define $(T, ...)\0A#define $I(X)\0A#define $F(X)\0A#define $S(X)\0A#define $R(X)\0A#define $B(X)\00", align 1
@.str.2 = private unnamed_addr constant [228 x i8] c"Allocate memory for the given type `T` on the stack and copy in the given arguments `...` as struct members. Shorthand constructors exist for native types:\0A\0A* `$I -> Int` `$F -> Float` `$S -> String`\0A* `$R -> Ref` `$B -> Box`\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"alloc\00", align 1
@.str.4 = private unnamed_addr constant [95 x i8] c"#define alloc_stack(T)\0Avar alloc(var type);\0Avar alloc_raw(var type);\0Avar alloc_root(var type);\00", align 1
@.str.5 = private unnamed_addr constant [329 x i8] c"Allocate memory for a given `type`. To avoid the Garbage Collector completely use `alloc_raw`, to register the allocation as a root use `alloc_root`. In the case of raw or root allocations the corresponding `dealloc` function should be used when done. Memory allocated with `alloc_stack` is not managed by the Garbage Collector.\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"dealloc\00", align 1
@.str.7 = private unnamed_addr constant [81 x i8] c"void dealloc(var self);\0Avoid dealloc_raw(var self);\0Avoid dealloc_root(var self);\00", align 1
@.str.8 = private unnamed_addr constant [214 x i8] c"Deallocate memory for object `self` manually. If registered with the Garbage Collector then entry will be removed. If the `raw` variation is used memory will be deallocated without going via the Garbage Collector.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Method* ()* @Alloc_Methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Method* @Alloc_Methods() #0 {
  ret %struct.Method* getelementptr inbounds ([4 x %struct.Method], [4 x %struct.Method]* @Alloc_Methods.methods, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

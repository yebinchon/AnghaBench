; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_nodefuncs.c_RegisterNodes.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_nodefuncs.c_RegisterNodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nodeMethods = common dso_local global i32* null, align 8
@CitusNodeTagNamesD = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"number of node methods and names do not match\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RegisterNodes() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @nodeMethods, align 8
  %3 = call i32 @lengthof(i32* %2)
  %4 = load i32*, i32** @CitusNodeTagNamesD, align 8
  %5 = call i32 @lengthof(i32* %4)
  %6 = icmp eq i32 %3, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @StaticAssertExpr(i32 %7, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %20, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32*, i32** @nodeMethods, align 8
  %12 = call i32 @lengthof(i32* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load i32*, i32** @nodeMethods, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @RegisterExtensibleNodeMethods(i32* %18)
  br label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %9

23:                                               ; preds = %9
  ret void
}

declare dso_local i32 @StaticAssertExpr(i32, i8*) #1

declare dso_local i32 @lengthof(i32*) #1

declare dso_local i32 @RegisterExtensibleNodeMethods(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

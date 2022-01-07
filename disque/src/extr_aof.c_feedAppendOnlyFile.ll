; ModuleID = '/home/carl/AnghaBench/disque/src/extr_aof.c_feedAppendOnlyFile.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_aof.c_feedAppendOnlyFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AOF_ON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @feedAppendOnlyFile(i32** %0, i32 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32** %0, i32*** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 (...) @sdsempty()
  store i64 %6, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32**, i32*** %3, align 8
  %10 = call i64 @catAppendOnlyGenericCommand(i64 %7, i32 %8, i32** %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %12 = load i64, i64* @AOF_ON, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @sdslen(i64 %17)
  %19 = call i32 @sdscatlen(i32 %15, i64 %16, i32 %18)
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 4
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @sdslen(i64 %26)
  %28 = call i32 @aofRewriteBufferAppend(i8* %25, i32 %27)
  br label %29

29:                                               ; preds = %23, %20
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @sdsfree(i64 %30)
  ret void
}

declare dso_local i64 @sdsempty(...) #1

declare dso_local i64 @catAppendOnlyGenericCommand(i64, i32, i32**) #1

declare dso_local i32 @sdscatlen(i32, i64, i32) #1

declare dso_local i32 @sdslen(i64) #1

declare dso_local i32 @aofRewriteBufferAppend(i8*, i32) #1

declare dso_local i32 @sdsfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

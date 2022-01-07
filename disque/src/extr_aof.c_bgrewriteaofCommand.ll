; ModuleID = '/home/carl/AnghaBench/disque/src/extr_aof.c_bgrewriteaofCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_aof.c_bgrewriteaofCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [58 x i8] c"Background append only file rewriting already in progress\00", align 1
@C_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Background append only file rewriting started\00", align 1
@shared = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bgrewriteaofCommand(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 4
  %4 = icmp ne i32 %3, -1
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @addReplyError(i32* %6, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %20

8:                                                ; preds = %1
  %9 = call i64 (...) @rewriteAppendOnlyFileBackground()
  %10 = load i64, i64* @C_OK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @addReplyStatus(i32* %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %19

15:                                               ; preds = %8
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 0), align 4
  %18 = call i32 @addReply(i32* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %12
  br label %20

20:                                               ; preds = %19, %5
  ret void
}

declare dso_local i32 @addReplyError(i32*, i8*) #1

declare dso_local i64 @rewriteAppendOnlyFileBackground(...) #1

declare dso_local i32 @addReplyStatus(i32*, i8*) #1

declare dso_local i32 @addReply(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

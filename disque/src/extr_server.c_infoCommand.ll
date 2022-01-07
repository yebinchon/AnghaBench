; ModuleID = '/home/carl/AnghaBench/disque/src/extr_server.c_infoCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_server.c_infoCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@shared = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @infoCommand(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %11, i64 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %8
  %18 = phi i8* [ %15, %8 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %16 ]
  store i8* %18, i8** %3, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @shared, i32 0, i32 0), align 4
  %26 = call i32 @addReply(%struct.TYPE_8__* %24, i32 %25)
  br label %32

27:                                               ; preds = %17
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @genDisqueInfoString(i8* %29)
  %31 = call i32 @addReplyBulkSds(%struct.TYPE_8__* %28, i32 %30)
  br label %32

32:                                               ; preds = %27, %23
  ret void
}

declare dso_local i32 @addReply(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @addReplyBulkSds(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @genDisqueInfoString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

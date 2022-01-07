; ModuleID = '/home/carl/AnghaBench/disque/src/extr_networking.c_getAllClientsInfoString.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_networking.c_getAllClientsInfoString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@client = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getAllClientsInfoString() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @client, align 4
  %5 = load i32, i32* @client, align 4
  %6 = mul nsw i32 %4, %5
  %7 = call i32 (...) @sdsempty()
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %10 = call i32 @listLength(i32 %9)
  %11 = mul nsw i32 200, %10
  %12 = call i32 @sdsMakeRoomFor(i32 %8, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %14 = call i32 @listRewind(i32 %13, i32* %2)
  br label %15

15:                                               ; preds = %18, %0
  %16 = call i32* @listNext(i32* %2)
  store i32* %16, i32** %1, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @listNodeValue(i32* %19)
  store i32 %20, i32* @client, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @client, align 4
  %23 = call i32 @catClientInfoString(i32 %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @sdscatlen(i32 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %25, i32* %3, align 4
  br label %15

26:                                               ; preds = %15
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @sdsMakeRoomFor(i32, i32) #1

declare dso_local i32 @listLength(i32) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local i32* @listNext(i32*) #1

declare dso_local i32 @listNodeValue(i32*) #1

declare dso_local i32 @catClientInfoString(i32, i32) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

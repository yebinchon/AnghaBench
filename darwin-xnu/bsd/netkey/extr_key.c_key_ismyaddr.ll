; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_ismyaddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_ismyaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.in_ifaddr* }
%struct.in_ifaddr = type { i32, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.in_ifaddr* }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"key_ismyaddr: NULL pointer is passed.\0A\00", align 1
@in_ifaddr_rwlock = common dso_local global i32 0, align 4
@in_ifaddrhead = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_ismyaddr(%struct.sockaddr* %0) #0 {
  %2 = alloca %struct.sockaddr*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %2, align 8
  %3 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %4 = icmp eq %struct.sockaddr* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %1
  %8 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %9 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %11 [
  ]

11:                                               ; preds = %7
  ret i32 0
}

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

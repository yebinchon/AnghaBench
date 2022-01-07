; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_main.c_establish_connection.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_main.c_establish_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@fd_serv = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@pending_connection = common dso_local global i32 0, align 4
@srv_addr = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @establish_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @establish_connection() #0 {
  %1 = load i32, i32* @AF_INET, align 4
  %2 = load i32, i32* @SOCK_STREAM, align 4
  %3 = call i32 @socket(i32 %1, i32 %2, i32 0)
  store i32 %3, i32* @fd_serv, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %19

6:                                                ; preds = %0
  %7 = load i32, i32* @fd_serv, align 4
  %8 = load i32, i32* @F_SETFL, align 4
  %9 = load i32, i32* @O_NONBLOCK, align 4
  %10 = load i32, i32* @fd_serv, align 4
  %11 = load i32, i32* @F_GETFL, align 4
  %12 = call i32 @fcntl(i32 %10, i32 %11, i32 0)
  %13 = or i32 %9, %12
  %14 = call i32 @fcntl(i32 %7, i32 %8, i32 %13)
  %15 = call i32 (...) @resolve_func()
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* @pending_connection, align 4
  %17 = load i32, i32* @fd_serv, align 4
  %18 = call i32 @connect(i32 %17, %struct.sockaddr* bitcast (i32* @srv_addr to %struct.sockaddr*), i32 4)
  br label %19

19:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @resolve_func(...) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

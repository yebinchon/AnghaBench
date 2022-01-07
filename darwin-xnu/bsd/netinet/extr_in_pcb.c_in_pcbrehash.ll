; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_in_pcbrehash.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_in_pcbrehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i64, i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.inpcbhead*, i32 }
%struct.inpcbhead = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@INP2_INHASHLIST = common dso_local global i32 0, align 4
@inp_hash = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in_pcbrehash(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  %3 = alloca %struct.inpcbhead*, align 8
  %4 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  %5 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %6 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %5, i32 0, i32 6
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %11 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %14 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %17 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %16, i32 0, i32 3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @INP_PCBHASH(i32 %9, i32 %12, i32 %15, i32 %20)
  %22 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %23 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %25 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %24, i32 0, i32 3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.inpcbhead*, %struct.inpcbhead** %27, align 8
  %29 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %30 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.inpcbhead, %struct.inpcbhead* %28, i64 %31
  store %struct.inpcbhead* %32, %struct.inpcbhead** %3, align 8
  %33 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %34 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @INP2_INHASHLIST, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %1
  %40 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %41 = load i32, i32* @inp_hash, align 4
  %42 = call i32 @LIST_REMOVE(%struct.inpcb* %40, i32 %41)
  %43 = load i32, i32* @INP2_INHASHLIST, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %39, %1
  %50 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %51 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @INP2_INHASHLIST, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @VERIFY(i32 %57)
  %59 = load %struct.inpcbhead*, %struct.inpcbhead** %3, align 8
  %60 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %61 = load i32, i32* @inp_hash, align 4
  %62 = call i32 @LIST_INSERT_HEAD(%struct.inpcbhead* %59, %struct.inpcb* %60, i32 %61)
  %63 = load i32, i32* @INP2_INHASHLIST, align 4
  %64 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %65 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  ret void
}

declare dso_local i64 @INP_PCBHASH(i32, i32, i32, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.inpcb*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.inpcbhead*, %struct.inpcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

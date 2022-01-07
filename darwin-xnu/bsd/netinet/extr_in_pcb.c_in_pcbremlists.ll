; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_in_pcbremlists.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_in_pcbremlists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i64, %struct.TYPE_6__*, i32, %struct.inpcb*, i32, %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.inpcbport = type { i32, i64, %struct.TYPE_6__*, i32, %struct.inpcbport*, i32, %struct.TYPE_5__, %struct.TYPE_4__, i64 }

@INP2_INHASHLIST = common dso_local global i32 0, align 4
@inp_hash = common dso_local global i32 0, align 4
@inp_portlist = common dso_local global i32 0, align 4
@phd_hash = common dso_local global i32 0, align 4
@M_PCB = common dso_local global i32 0, align 4
@INP2_TIMEWAIT = common dso_local global i32 0, align 4
@inp_list = common dso_local global i32 0, align 4
@INP2_IN_FCTREE = common dso_local global i32 0, align 4
@INPFC_SOLOCKED = common dso_local global i32 0, align 4
@INPFC_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in_pcbremlists(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  %3 = alloca %struct.inpcbport*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  %4 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %5 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %4, i32 0, i32 2
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %7, align 8
  %10 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %11 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %10, i32 0, i32 8
  store i64 %9, i64* %11, align 8
  %12 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %13 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @INP2_INHASHLIST, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %74

18:                                               ; preds = %1
  %19 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 4
  %21 = load %struct.inpcb*, %struct.inpcb** %20, align 8
  %22 = bitcast %struct.inpcb* %21 to %struct.inpcbport*
  store %struct.inpcbport* %22, %struct.inpcbport** %3, align 8
  %23 = load %struct.inpcbport*, %struct.inpcbport** %3, align 8
  %24 = icmp ne %struct.inpcbport* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %27 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br label %30

30:                                               ; preds = %25, %18
  %31 = phi i1 [ false, %18 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @VERIFY(i32 %32)
  %34 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %35 = bitcast %struct.inpcb* %34 to %struct.inpcbport*
  %36 = load i32, i32* @inp_hash, align 4
  %37 = call i32 @LIST_REMOVE(%struct.inpcbport* %35, i32 %36)
  %38 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %39 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %42 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %45 = bitcast %struct.inpcb* %44 to %struct.inpcbport*
  %46 = load i32, i32* @inp_portlist, align 4
  %47 = call i32 @LIST_REMOVE(%struct.inpcbport* %45, i32 %46)
  %48 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %49 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  %51 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %52 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load %struct.inpcbport*, %struct.inpcbport** %3, align 8
  %55 = getelementptr inbounds %struct.inpcbport, %struct.inpcbport* %54, i32 0, i32 5
  %56 = call i64 @LIST_EMPTY(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %30
  %59 = load %struct.inpcbport*, %struct.inpcbport** %3, align 8
  %60 = load i32, i32* @phd_hash, align 4
  %61 = call i32 @LIST_REMOVE(%struct.inpcbport* %59, i32 %60)
  %62 = load %struct.inpcbport*, %struct.inpcbport** %3, align 8
  %63 = load i32, i32* @M_PCB, align 4
  %64 = call i32 @FREE(%struct.inpcbport* %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %30
  %66 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %67 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %66, i32 0, i32 4
  store %struct.inpcb* null, %struct.inpcb** %67, align 8
  %68 = load i32, i32* @INP2_INHASHLIST, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %71 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %65, %1
  %75 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %76 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @INP2_INHASHLIST, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @VERIFY(i32 %82)
  %84 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %85 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @INP2_TIMEWAIT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %74
  %91 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %92 = bitcast %struct.inpcb* %91 to %struct.inpcbport*
  %93 = call i32 @tcp_remove_from_time_wait(%struct.inpcbport* %92)
  %94 = load i32, i32* @INP2_TIMEWAIT, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %97 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %101 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %100, i32 0, i32 2
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @VERIFY(i32 %106)
  %108 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %109 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %108, i32 0, i32 2
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, -1
  store i64 %113, i64* %111, align 8
  br label %119

114:                                              ; preds = %74
  %115 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %116 = bitcast %struct.inpcb* %115 to %struct.inpcbport*
  %117 = load i32, i32* @inp_list, align 4
  %118 = call i32 @LIST_REMOVE(%struct.inpcbport* %116, i32 %117)
  br label %119

119:                                              ; preds = %114, %90
  %120 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %121 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @INP2_IN_FCTREE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %119
  %127 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %128 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @INPFC_SOLOCKED, align 4
  %131 = load i32, i32* @INPFC_REMOVE, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @inp_fc_getinp(i32 %129, i32 %132)
  %134 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %135 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @INP2_IN_FCTREE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = call i32 @VERIFY(i32 %141)
  br label %143

143:                                              ; preds = %126, %119
  %144 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %145 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %144, i32 0, i32 2
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %147, align 8
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.inpcbport*, i32) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @FREE(%struct.inpcbport*, i32) #1

declare dso_local i32 @tcp_remove_from_time_wait(%struct.inpcbport*) #1

declare dso_local i32 @inp_fc_getinp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

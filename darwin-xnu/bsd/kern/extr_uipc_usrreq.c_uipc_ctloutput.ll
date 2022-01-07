; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_uipc_ctloutput.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_uipc_ctloutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, i32, i32, i32, i32 }
%struct.sockopt = type { i32, i32 }
%struct.unpcb = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.socket* }

@UNP_HAVEPC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"peer is connected but has no socket?\00", align 1
@SOF_DELEGATED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uipc_ctloutput(%struct.socket* %0, %struct.sockopt* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sockopt*, align 8
  %5 = alloca %struct.unpcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.sockopt* %1, %struct.sockopt** %4, align 8
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = call %struct.unpcb* @sotounpcb(%struct.socket* %9)
  store %struct.unpcb* %10, %struct.unpcb** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %12 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %136 [
    i32 129, label %14
    i32 128, label %135
  ]

14:                                               ; preds = %2
  %15 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %16 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %132 [
    i32 134, label %18
    i32 131, label %42
    i32 133, label %42
    i32 130, label %87
    i32 132, label %87
  ]

18:                                               ; preds = %14
  %19 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %20 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @UNP_HAVEPC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %27 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %28 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %27, i32 0, i32 2
  %29 = call i32 @sooptcopyout(%struct.sockopt* %26, i32* %28, i32 4)
  store i32 %29, i32* %6, align 4
  br label %41

30:                                               ; preds = %18
  %31 = load %struct.socket*, %struct.socket** %3, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SOCK_STREAM, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOTCONN, align 4
  store i32 %37, i32* %6, align 4
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %36
  br label %41

41:                                               ; preds = %40, %25
  br label %134

42:                                               ; preds = %14, %14
  %43 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %44 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = icmp eq %struct.TYPE_2__* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOTCONN, align 4
  store i32 %48, i32* %6, align 4
  br label %134

49:                                               ; preds = %42
  %50 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %51 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.socket*, %struct.socket** %53, align 8
  store %struct.socket* %54, %struct.socket** %8, align 8
  %55 = load %struct.socket*, %struct.socket** %8, align 8
  %56 = icmp eq %struct.socket* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %49
  %60 = load %struct.socket*, %struct.socket** %3, align 8
  %61 = load %struct.socket*, %struct.socket** %8, align 8
  %62 = call i32 @unp_get_locks_in_order(%struct.socket* %60, %struct.socket* %61)
  %63 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %64 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 133
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  %68 = load %struct.socket*, %struct.socket** %8, align 8
  %69 = getelementptr inbounds %struct.socket, %struct.socket* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SOF_DELEGATED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.socket*, %struct.socket** %8, align 8
  %76 = getelementptr inbounds %struct.socket, %struct.socket* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %7, align 4
  br label %82

78:                                               ; preds = %67, %59
  %79 = load %struct.socket*, %struct.socket** %8, align 8
  %80 = getelementptr inbounds %struct.socket, %struct.socket* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %78, %74
  %83 = load %struct.socket*, %struct.socket** %8, align 8
  %84 = call i32 @socket_unlock(%struct.socket* %83, i32 1)
  %85 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %86 = call i32 @sooptcopyout(%struct.sockopt* %85, i32* %7, i32 4)
  store i32 %86, i32* %6, align 4
  br label %134

87:                                               ; preds = %14, %14
  %88 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %89 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = icmp eq %struct.TYPE_2__* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @ENOTCONN, align 4
  store i32 %93, i32* %6, align 4
  br label %134

94:                                               ; preds = %87
  %95 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %96 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load %struct.socket*, %struct.socket** %98, align 8
  store %struct.socket* %99, %struct.socket** %8, align 8
  %100 = load %struct.socket*, %struct.socket** %8, align 8
  %101 = icmp eq %struct.socket* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %94
  %105 = load %struct.socket*, %struct.socket** %3, align 8
  %106 = load %struct.socket*, %struct.socket** %8, align 8
  %107 = call i32 @unp_get_locks_in_order(%struct.socket* %105, %struct.socket* %106)
  %108 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %109 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 132
  br i1 %111, label %112, label %124

112:                                              ; preds = %104
  %113 = load %struct.socket*, %struct.socket** %8, align 8
  %114 = getelementptr inbounds %struct.socket, %struct.socket* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SOF_DELEGATED, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %121 = load %struct.socket*, %struct.socket** %8, align 8
  %122 = getelementptr inbounds %struct.socket, %struct.socket* %121, i32 0, i32 2
  %123 = call i32 @sooptcopyout(%struct.sockopt* %120, i32* %122, i32 4)
  store i32 %123, i32* %6, align 4
  br label %129

124:                                              ; preds = %112, %104
  %125 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %126 = load %struct.socket*, %struct.socket** %8, align 8
  %127 = getelementptr inbounds %struct.socket, %struct.socket* %126, i32 0, i32 1
  %128 = call i32 @sooptcopyout(%struct.sockopt* %125, i32* %127, i32 4)
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %124, %119
  %130 = load %struct.socket*, %struct.socket** %8, align 8
  %131 = call i32 @socket_unlock(%struct.socket* %130, i32 1)
  br label %134

132:                                              ; preds = %14
  %133 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %132, %129, %92, %82, %47, %41
  br label %138

135:                                              ; preds = %2
  br label %136

136:                                              ; preds = %2, %135
  %137 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local %struct.unpcb* @sotounpcb(%struct.socket*) #1

declare dso_local i32 @sooptcopyout(%struct.sockopt*, i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @unp_get_locks_in_order(%struct.socket*, %struct.socket*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

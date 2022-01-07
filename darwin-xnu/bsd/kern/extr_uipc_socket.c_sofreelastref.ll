; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sofreelastref.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sofreelastref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, i8*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__*, %struct.socket*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }

@SOF_PCBCLEARING = common dso_local global i32 0, align 4
@SS_NOFDREF = common dso_local global i32 0, align 4
@SB_SEL = common dso_local global i32 0, align 4
@SB_UPCALL = common dso_local global i32 0, align 4
@sonullevent = common dso_local global i8* null, align 8
@SS_INCOMP = common dso_local global i32 0, align 4
@so_list = common dso_local global i32 0, align 4
@SS_COMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"sofree: not queued\0A\00", align 1
@SB_SNDBYTE_CNT = common dso_local global i32 0, align 4
@SOF_FLOW_DIVERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sofreelastref(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 6
  %8 = load %struct.socket*, %struct.socket** %7, align 8
  store %struct.socket* %8, %struct.socket** %5, align 8
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SOF_PCBCLEARING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.socket*, %struct.socket** %3, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SS_NOFDREF, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %15, %2
  %23 = load %struct.socket*, %struct.socket** %3, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = call i32 @selthreadclear(i32* %25)
  %27 = load %struct.socket*, %struct.socket** %3, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = call i32 @selthreadclear(i32* %29)
  %31 = load i32, i32* @SB_SEL, align 4
  %32 = load i32, i32* @SB_UPCALL, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load %struct.socket*, %struct.socket** %3, align 8
  %36 = getelementptr inbounds %struct.socket, %struct.socket* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %34
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @SB_SEL, align 4
  %41 = load i32, i32* @SB_UPCALL, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.socket*, %struct.socket** %3, align 8
  %45 = getelementptr inbounds %struct.socket, %struct.socket* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %43
  store i32 %48, i32* %46, align 8
  %49 = load i8*, i8** @sonullevent, align 8
  %50 = load %struct.socket*, %struct.socket** %3, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  br label %203

52:                                               ; preds = %15
  %53 = load %struct.socket*, %struct.socket** %5, align 8
  %54 = icmp ne %struct.socket* %53, null
  br i1 %54, label %55, label %174

55:                                               ; preds = %52
  %56 = load %struct.socket*, %struct.socket** %5, align 8
  %57 = getelementptr inbounds %struct.socket, %struct.socket* %56, i32 0, i32 5
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.socket*, %struct.socket** %5, align 8
  %64 = call i32 @socket_lock(%struct.socket* %63, i32 1)
  %65 = load %struct.socket*, %struct.socket** %5, align 8
  %66 = load %struct.socket*, %struct.socket** %3, align 8
  %67 = call i32 @so_acquire_accept_list(%struct.socket* %65, %struct.socket* %66)
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.socket*, %struct.socket** %3, align 8
  %70 = getelementptr inbounds %struct.socket, %struct.socket* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SS_INCOMP, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %109

75:                                               ; preds = %68
  %76 = load i32, i32* @SS_INCOMP, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.socket*, %struct.socket** %3, align 8
  %79 = getelementptr inbounds %struct.socket, %struct.socket* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.socket*, %struct.socket** %5, align 8
  %83 = getelementptr inbounds %struct.socket, %struct.socket* %82, i32 0, i32 9
  %84 = load %struct.socket*, %struct.socket** %3, align 8
  %85 = load i32, i32* @so_list, align 4
  %86 = call i32 @TAILQ_REMOVE(i32* %83, %struct.socket* %84, i32 %85)
  %87 = load %struct.socket*, %struct.socket** %5, align 8
  %88 = getelementptr inbounds %struct.socket, %struct.socket* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %88, align 4
  %91 = load %struct.socket*, %struct.socket** %5, align 8
  %92 = getelementptr inbounds %struct.socket, %struct.socket* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %92, align 8
  %95 = load %struct.socket*, %struct.socket** %3, align 8
  %96 = getelementptr inbounds %struct.socket, %struct.socket* %95, i32 0, i32 6
  store %struct.socket* null, %struct.socket** %96, align 8
  %97 = load %struct.socket*, %struct.socket** %5, align 8
  %98 = getelementptr inbounds %struct.socket, %struct.socket* %97, i32 0, i32 5
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %75
  %104 = load %struct.socket*, %struct.socket** %5, align 8
  %105 = call i32 @so_release_accept_list(%struct.socket* %104)
  %106 = load %struct.socket*, %struct.socket** %5, align 8
  %107 = call i32 @socket_unlock(%struct.socket* %106, i32 1)
  br label %108

108:                                              ; preds = %103, %75
  br label %173

109:                                              ; preds = %68
  %110 = load %struct.socket*, %struct.socket** %3, align 8
  %111 = getelementptr inbounds %struct.socket, %struct.socket* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @SS_COMP, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %158

116:                                              ; preds = %109
  %117 = load %struct.socket*, %struct.socket** %5, align 8
  %118 = getelementptr inbounds %struct.socket, %struct.socket* %117, i32 0, i32 5
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load %struct.socket*, %struct.socket** %5, align 8
  %125 = call i32 @so_release_accept_list(%struct.socket* %124)
  %126 = load %struct.socket*, %struct.socket** %5, align 8
  %127 = call i32 @socket_unlock(%struct.socket* %126, i32 1)
  br label %128

128:                                              ; preds = %123, %116
  %129 = load %struct.socket*, %struct.socket** %3, align 8
  %130 = getelementptr inbounds %struct.socket, %struct.socket* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = call i32 @selthreadclear(i32* %131)
  %133 = load %struct.socket*, %struct.socket** %3, align 8
  %134 = getelementptr inbounds %struct.socket, %struct.socket* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = call i32 @selthreadclear(i32* %135)
  %137 = load i32, i32* @SB_SEL, align 4
  %138 = load i32, i32* @SB_UPCALL, align 4
  %139 = or i32 %137, %138
  %140 = xor i32 %139, -1
  %141 = load %struct.socket*, %struct.socket** %3, align 8
  %142 = getelementptr inbounds %struct.socket, %struct.socket* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = and i32 %144, %140
  store i32 %145, i32* %143, align 8
  %146 = load i32, i32* @SB_SEL, align 4
  %147 = load i32, i32* @SB_UPCALL, align 4
  %148 = or i32 %146, %147
  %149 = xor i32 %148, -1
  %150 = load %struct.socket*, %struct.socket** %3, align 8
  %151 = getelementptr inbounds %struct.socket, %struct.socket* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %153, %149
  store i32 %154, i32* %152, align 8
  %155 = load i8*, i8** @sonullevent, align 8
  %156 = load %struct.socket*, %struct.socket** %3, align 8
  %157 = getelementptr inbounds %struct.socket, %struct.socket* %156, i32 0, i32 2
  store i8* %155, i8** %157, align 8
  br label %203

158:                                              ; preds = %109
  %159 = load %struct.socket*, %struct.socket** %5, align 8
  %160 = getelementptr inbounds %struct.socket, %struct.socket* %159, i32 0, i32 5
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %170

165:                                              ; preds = %158
  %166 = load %struct.socket*, %struct.socket** %5, align 8
  %167 = call i32 @so_release_accept_list(%struct.socket* %166)
  %168 = load %struct.socket*, %struct.socket** %5, align 8
  %169 = call i32 @socket_unlock(%struct.socket* %168, i32 1)
  br label %170

170:                                              ; preds = %165, %158
  %171 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170
  br label %173

173:                                              ; preds = %172, %108
  br label %174

174:                                              ; preds = %173, %52
  %175 = load %struct.socket*, %struct.socket** %3, align 8
  %176 = call i32 @sowflush(%struct.socket* %175)
  %177 = load %struct.socket*, %struct.socket** %3, align 8
  %178 = call i32 @sorflush(%struct.socket* %177)
  %179 = load i32, i32* @SB_UPCALL, align 4
  %180 = xor i32 %179, -1
  %181 = load %struct.socket*, %struct.socket** %3, align 8
  %182 = getelementptr inbounds %struct.socket, %struct.socket* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = and i32 %184, %180
  store i32 %185, i32* %183, align 8
  %186 = load i32, i32* @SB_UPCALL, align 4
  %187 = load i32, i32* @SB_SNDBYTE_CNT, align 4
  %188 = or i32 %186, %187
  %189 = xor i32 %188, -1
  %190 = load %struct.socket*, %struct.socket** %3, align 8
  %191 = getelementptr inbounds %struct.socket, %struct.socket* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = and i32 %193, %189
  store i32 %194, i32* %192, align 8
  %195 = load i8*, i8** @sonullevent, align 8
  %196 = load %struct.socket*, %struct.socket** %3, align 8
  %197 = getelementptr inbounds %struct.socket, %struct.socket* %196, i32 0, i32 2
  store i8* %195, i8** %197, align 8
  %198 = load i32, i32* %4, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %174
  %201 = load %struct.socket*, %struct.socket** %3, align 8
  %202 = call i32 @sodealloc(%struct.socket* %201)
  br label %203

203:                                              ; preds = %22, %128, %200, %174
  ret void
}

declare dso_local i32 @selthreadclear(i32*) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @so_acquire_accept_list(%struct.socket*, %struct.socket*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.socket*, i32) #1

declare dso_local i32 @so_release_accept_list(%struct.socket*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sowflush(%struct.socket*) #1

declare dso_local i32 @sorflush(%struct.socket*) #1

declare dso_local i32 @sodealloc(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

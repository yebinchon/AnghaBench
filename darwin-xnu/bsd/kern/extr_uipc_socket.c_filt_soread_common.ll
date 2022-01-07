; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_filt_soread_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_filt_soread_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64, i32, i32, i64, i32 }
%struct.socket = type { i32, i64, i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@SO_ACCEPTCONN = common dso_local global i32 0, align 4
@NOTE_OOB = common dso_local global i32 0, align 4
@SS_RCVATMARK = common dso_local global i32 0, align 4
@SS_CANTRCVMORE = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@NOTE_LOWAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.socket*)* @filt_soread_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_soread_common(%struct.knote* %0, %struct.socket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.knote* %0, %struct.knote** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  %8 = load %struct.socket*, %struct.socket** %5, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SO_ACCEPTCONN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.knote*, %struct.knote** %4, align 8
  %19 = getelementptr inbounds %struct.knote, %struct.knote* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.socket*, %struct.socket** %5, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 6
  %22 = call i32 @TAILQ_EMPTY(i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %154

27:                                               ; preds = %2
  %28 = load %struct.socket*, %struct.socket** %5, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.socket*, %struct.socket** %5, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %31, %35
  %37 = load %struct.knote*, %struct.knote** %4, align 8
  %38 = getelementptr inbounds %struct.knote, %struct.knote* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.knote*, %struct.knote** %4, align 8
  %40 = getelementptr inbounds %struct.knote, %struct.knote* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @NOTE_OOB, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %27
  %46 = load %struct.socket*, %struct.socket** %5, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = load %struct.socket*, %struct.socket** %5, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SS_RCVATMARK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %50, %45
  %58 = load i32, i32* @NOTE_OOB, align 4
  %59 = load %struct.knote*, %struct.knote** %4, align 8
  %60 = getelementptr inbounds %struct.knote, %struct.knote* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.socket*, %struct.socket** %5, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.knote*, %struct.knote** %4, align 8
  %67 = getelementptr inbounds %struct.knote, %struct.knote* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %68, %65
  store i64 %69, i64* %67, align 8
  store i32 1, i32* %3, align 4
  br label %154

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %70, %27
  %72 = load %struct.socket*, %struct.socket** %5, align 8
  %73 = getelementptr inbounds %struct.socket, %struct.socket* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SS_CANTRCVMORE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %71
  %79 = load i32, i32* @EV_EOF, align 4
  %80 = load %struct.knote*, %struct.knote** %4, align 8
  %81 = getelementptr inbounds %struct.knote, %struct.knote* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.socket*, %struct.socket** %5, align 8
  %85 = getelementptr inbounds %struct.socket, %struct.socket* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.knote*, %struct.knote** %4, align 8
  %88 = getelementptr inbounds %struct.knote, %struct.knote* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  store i32 1, i32* %3, align 4
  br label %154

89:                                               ; preds = %71
  %90 = load %struct.socket*, %struct.socket** %5, align 8
  %91 = getelementptr inbounds %struct.socket, %struct.socket* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 1, i32* %3, align 4
  br label %154

95:                                               ; preds = %89
  %96 = load %struct.socket*, %struct.socket** %5, align 8
  %97 = getelementptr inbounds %struct.socket, %struct.socket* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %7, align 8
  %100 = load %struct.knote*, %struct.knote** %4, align 8
  %101 = getelementptr inbounds %struct.knote, %struct.knote* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @NOTE_LOWAT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %132

106:                                              ; preds = %95
  %107 = load %struct.knote*, %struct.knote** %4, align 8
  %108 = getelementptr inbounds %struct.knote, %struct.knote* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.socket*, %struct.socket** %5, align 8
  %111 = getelementptr inbounds %struct.socket, %struct.socket* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %109, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %106
  %116 = load %struct.socket*, %struct.socket** %5, align 8
  %117 = getelementptr inbounds %struct.socket, %struct.socket* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %7, align 8
  br label %131

120:                                              ; preds = %106
  %121 = load %struct.knote*, %struct.knote** %4, align 8
  %122 = getelementptr inbounds %struct.knote, %struct.knote* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %7, align 8
  %125 = icmp sgt i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.knote*, %struct.knote** %4, align 8
  %128 = getelementptr inbounds %struct.knote, %struct.knote* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %7, align 8
  br label %130

130:                                              ; preds = %126, %120
  br label %131

131:                                              ; preds = %130, %115
  br label %132

132:                                              ; preds = %131, %95
  %133 = load %struct.knote*, %struct.knote** %4, align 8
  %134 = getelementptr inbounds %struct.knote, %struct.knote* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @NOTE_LOWAT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %132
  %140 = load %struct.knote*, %struct.knote** %4, align 8
  %141 = getelementptr inbounds %struct.knote, %struct.knote* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %7, align 8
  %144 = icmp sge i64 %142, %143
  %145 = zext i1 %144 to i32
  store i32 %145, i32* %3, align 4
  br label %154

146:                                              ; preds = %132
  %147 = load %struct.socket*, %struct.socket** %5, align 8
  %148 = getelementptr inbounds %struct.socket, %struct.socket* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %7, align 8
  %152 = icmp sge i64 %150, %151
  %153 = zext i1 %152 to i32
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %146, %139, %94, %78, %57, %14
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

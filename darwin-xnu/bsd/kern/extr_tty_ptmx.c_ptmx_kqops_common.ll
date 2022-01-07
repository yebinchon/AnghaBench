; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_ptmx.c_ptmx_kqops_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_ptmx.c_ptmx_kqops_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i32 }
%struct.ptmx_ioctl = type { i32, i32, i32 }
%struct.tty = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@TS_CONNECTED = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@TS_TTSTOP = common dso_local global i32 0, align 4
@PF_PKT = common dso_local global i32 0, align 4
@PF_UCNTL = common dso_local global i32 0, align 4
@PF_REMOTE = common dso_local global i32 0, align 4
@TTYHOG = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"ptmx kevent: unexpected filter: %d, kn = %p, tty = %p\00", align 1
@TS_ZOMBIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.ptmx_ioctl*, %struct.tty*)* @ptmx_kqops_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptmx_kqops_common(%struct.knote* %0, %struct.ptmx_ioctl* %1, %struct.tty* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.knote*, align 8
  %6 = alloca %struct.ptmx_ioctl*, align 8
  %7 = alloca %struct.tty*, align 8
  %8 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %5, align 8
  store %struct.ptmx_ioctl* %1, %struct.ptmx_ioctl** %6, align 8
  store %struct.tty* %2, %struct.tty** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.tty*, %struct.tty** %7, align 8
  %10 = call i32 @TTY_LOCK_OWNED(%struct.tty* %9)
  %11 = load %struct.tty*, %struct.tty** %7, align 8
  %12 = getelementptr inbounds %struct.tty, %struct.tty* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TS_CONNECTED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EV_EOF, align 4
  %19 = load %struct.knote*, %struct.knote** %5, align 8
  %20 = getelementptr inbounds %struct.knote, %struct.knote* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  store i32 1, i32* %4, align 4
  br label %146

23:                                               ; preds = %3
  %24 = load %struct.knote*, %struct.knote** %5, align 8
  %25 = getelementptr inbounds %struct.knote, %struct.knote* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %124 [
    i32 129, label %27
    i32 128, label %75
  ]

27:                                               ; preds = %23
  %28 = load %struct.tty*, %struct.tty** %7, align 8
  %29 = getelementptr inbounds %struct.tty, %struct.tty* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = load %struct.tty*, %struct.tty** %7, align 8
  %35 = getelementptr inbounds %struct.tty, %struct.tty* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TS_TTSTOP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %33
  %41 = load %struct.tty*, %struct.tty** %7, align 8
  %42 = getelementptr inbounds %struct.tty, %struct.tty* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.knote*, %struct.knote** %5, align 8
  %47 = getelementptr inbounds %struct.knote, %struct.knote* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %74

48:                                               ; preds = %33, %27
  %49 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %6, align 8
  %50 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PF_PKT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %6, align 8
  %57 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %55, %48
  %61 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %6, align 8
  %62 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PF_UCNTL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %6, align 8
  %69 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67, %55
  store i32 1, i32* %8, align 4
  br label %73

73:                                               ; preds = %72, %67, %60
  br label %74

74:                                               ; preds = %73, %40
  br label %131

75:                                               ; preds = %23
  %76 = load %struct.ptmx_ioctl*, %struct.ptmx_ioctl** %6, align 8
  %77 = getelementptr inbounds %struct.ptmx_ioctl, %struct.ptmx_ioctl* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PF_REMOTE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = load %struct.tty*, %struct.tty** %7, align 8
  %84 = getelementptr inbounds %struct.tty, %struct.tty* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* @TTYHOG, align 4
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %88, %82
  br label %123

92:                                               ; preds = %75
  %93 = load i32, i32* @TTYHOG, align 4
  %94 = sub nsw i32 %93, 2
  %95 = load %struct.tty*, %struct.tty** %7, align 8
  %96 = getelementptr inbounds %struct.tty, %struct.tty* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.tty*, %struct.tty** %7, align 8
  %100 = getelementptr inbounds %struct.tty, %struct.tty* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %98, %102
  %104 = sub nsw i32 %94, %103
  store i32 %104, i32* %8, align 4
  %105 = load %struct.tty*, %struct.tty** %7, align 8
  %106 = getelementptr inbounds %struct.tty, %struct.tty* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %92
  %111 = load %struct.tty*, %struct.tty** %7, align 8
  %112 = getelementptr inbounds %struct.tty, %struct.tty* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @ICANON, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  store i32 1, i32* %8, align 4
  br label %118

118:                                              ; preds = %117, %110, %92
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 0, i32* %8, align 4
  br label %122

122:                                              ; preds = %121, %118
  br label %123

123:                                              ; preds = %122, %91
  br label %131

124:                                              ; preds = %23
  %125 = load %struct.knote*, %struct.knote** %5, align 8
  %126 = getelementptr inbounds %struct.knote, %struct.knote* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.knote*, %struct.knote** %5, align 8
  %129 = load %struct.tty*, %struct.tty** %7, align 8
  %130 = call i32 @panic(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %127, %struct.knote* %128, %struct.tty* %129)
  br label %131

131:                                              ; preds = %124, %123, %74
  %132 = load %struct.tty*, %struct.tty** %7, align 8
  %133 = getelementptr inbounds %struct.tty, %struct.tty* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @TS_ZOMBIE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = load i32, i32* @EV_EOF, align 4
  %140 = load %struct.knote*, %struct.knote** %5, align 8
  %141 = getelementptr inbounds %struct.knote, %struct.knote* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  store i32 1, i32* %8, align 4
  br label %144

144:                                              ; preds = %138, %131
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %144, %17
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @TTY_LOCK_OWNED(%struct.tty*) #1

declare dso_local i32 @panic(i8*, i32, %struct.knote*, %struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

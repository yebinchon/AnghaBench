; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttymodem.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttymodem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@TS_CARR_ON = common dso_local global i32 0, align 4
@MDMBUF = common dso_local global i32 0, align 4
@TS_CAR_OFLOW = common dso_local global i32 0, align 4
@TS_TTSTOP = common dso_local global i32 0, align 4
@TS_ISOPEN = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@TS_ZOMBIE = common dso_local global i32 0, align 4
@TS_CONNECTED = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttymodem(%struct.tty* %0, i32 %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %6 = load %struct.tty*, %struct.tty** %3, align 8
  %7 = call i32 @TTY_LOCK_OWNED(%struct.tty* %6)
  %8 = load %struct.tty*, %struct.tty** %3, align 8
  %9 = getelementptr inbounds %struct.tty, %struct.tty* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @TS_CARR_ON, align 4
  %12 = call i64 @ISSET(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %59

14:                                               ; preds = %2
  %15 = load %struct.tty*, %struct.tty** %3, align 8
  %16 = getelementptr inbounds %struct.tty, %struct.tty* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MDMBUF, align 4
  %19 = call i64 @ISSET(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load %struct.tty*, %struct.tty** %3, align 8
  %26 = getelementptr inbounds %struct.tty, %struct.tty* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TS_CAR_OFLOW, align 4
  %29 = call i32 @CLR(i32 %27, i32 %28)
  %30 = load %struct.tty*, %struct.tty** %3, align 8
  %31 = getelementptr inbounds %struct.tty, %struct.tty* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TS_TTSTOP, align 4
  %34 = call i32 @CLR(i32 %32, i32 %33)
  %35 = load %struct.tty*, %struct.tty** %3, align 8
  %36 = call i32 @ttstart(%struct.tty* %35)
  br label %58

37:                                               ; preds = %21
  %38 = load %struct.tty*, %struct.tty** %3, align 8
  %39 = getelementptr inbounds %struct.tty, %struct.tty* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @TS_CAR_OFLOW, align 4
  %42 = call i64 @ISSET(i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %37
  %45 = load %struct.tty*, %struct.tty** %3, align 8
  %46 = getelementptr inbounds %struct.tty, %struct.tty* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @TS_CAR_OFLOW, align 4
  %49 = call i32 @SET(i32 %47, i32 %48)
  %50 = load %struct.tty*, %struct.tty** %3, align 8
  %51 = getelementptr inbounds %struct.tty, %struct.tty* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @TS_TTSTOP, align 4
  %54 = call i32 @SET(i32 %52, i32 %53)
  %55 = load %struct.tty*, %struct.tty** %3, align 8
  %56 = call i32 @ttystop(%struct.tty* %55, i32 0)
  br label %57

57:                                               ; preds = %44, %37
  br label %58

58:                                               ; preds = %57, %24
  br label %145

59:                                               ; preds = %14, %2
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %118

62:                                               ; preds = %59
  %63 = load %struct.tty*, %struct.tty** %3, align 8
  %64 = getelementptr inbounds %struct.tty, %struct.tty* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @TS_CARR_ON, align 4
  %67 = call i32 @CLR(i32 %65, i32 %66)
  %68 = load %struct.tty*, %struct.tty** %3, align 8
  %69 = getelementptr inbounds %struct.tty, %struct.tty* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @TS_ISOPEN, align 4
  %72 = call i64 @ISSET(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %117

74:                                               ; preds = %62
  %75 = load %struct.tty*, %struct.tty** %3, align 8
  %76 = getelementptr inbounds %struct.tty, %struct.tty* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CLOCAL, align 4
  %79 = call i64 @ISSET(i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %117, label %81

81:                                               ; preds = %74
  %82 = load %struct.tty*, %struct.tty** %3, align 8
  %83 = getelementptr inbounds %struct.tty, %struct.tty* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @TS_ZOMBIE, align 4
  %86 = call i32 @SET(i32 %84, i32 %85)
  %87 = load %struct.tty*, %struct.tty** %3, align 8
  %88 = getelementptr inbounds %struct.tty, %struct.tty* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @TS_CONNECTED, align 4
  %91 = call i32 @CLR(i32 %89, i32 %90)
  %92 = load %struct.tty*, %struct.tty** %3, align 8
  %93 = getelementptr inbounds %struct.tty, %struct.tty* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = icmp ne %struct.TYPE_2__* %94, null
  br i1 %95, label %96, label %111

96:                                               ; preds = %81
  %97 = load %struct.tty*, %struct.tty** %3, align 8
  %98 = getelementptr inbounds %struct.tty, %struct.tty* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load %struct.tty*, %struct.tty** %3, align 8
  %105 = getelementptr inbounds %struct.tty, %struct.tty* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @SIGHUP, align 4
  %110 = call i32 @psignal(i64 %108, i32 %109)
  br label %111

111:                                              ; preds = %103, %96, %81
  %112 = load %struct.tty*, %struct.tty** %3, align 8
  %113 = load i32, i32* @FREAD, align 4
  %114 = load i32, i32* @FWRITE, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @ttyflush(%struct.tty* %112, i32 %115)
  store i32 0, i32* %5, align 4
  br label %146

117:                                              ; preds = %74, %62
  br label %144

118:                                              ; preds = %59
  %119 = load %struct.tty*, %struct.tty** %3, align 8
  %120 = getelementptr inbounds %struct.tty, %struct.tty* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @TS_CARR_ON, align 4
  %123 = call i32 @SET(i32 %121, i32 %122)
  %124 = load %struct.tty*, %struct.tty** %3, align 8
  %125 = getelementptr inbounds %struct.tty, %struct.tty* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @TS_ZOMBIE, align 4
  %128 = call i64 @ISSET(i32 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %118
  %131 = load %struct.tty*, %struct.tty** %3, align 8
  %132 = getelementptr inbounds %struct.tty, %struct.tty* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @TS_CONNECTED, align 4
  %135 = call i32 @SET(i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %130, %118
  %137 = load %struct.tty*, %struct.tty** %3, align 8
  %138 = call i32 @TSA_CARR_ON(%struct.tty* %137)
  %139 = call i32 @wakeup(i32 %138)
  %140 = load %struct.tty*, %struct.tty** %3, align 8
  %141 = call i32 @ttwakeup(%struct.tty* %140)
  %142 = load %struct.tty*, %struct.tty** %3, align 8
  %143 = call i32 @ttwwakeup(%struct.tty* %142)
  br label %144

144:                                              ; preds = %136, %117
  br label %145

145:                                              ; preds = %144, %58
  br label %146

146:                                              ; preds = %145, %111
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @TTY_LOCK_OWNED(%struct.tty*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @CLR(i32, i32) #1

declare dso_local i32 @ttstart(%struct.tty*) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @ttystop(%struct.tty*, i32) #1

declare dso_local i32 @psignal(i64, i32) #1

declare dso_local i32 @ttyflush(%struct.tty*, i32) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @TSA_CARR_ON(%struct.tty*) #1

declare dso_local i32 @ttwakeup(%struct.tty*) #1

declare dso_local i32 @ttwwakeup(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

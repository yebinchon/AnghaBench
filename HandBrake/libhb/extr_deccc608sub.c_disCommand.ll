; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_disCommand.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_disCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_write = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8, %struct.s_write*)* @disCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disCommand(i8 zeroext %0, i8 zeroext %1, %struct.s_write* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.s_write*, align 8
  %7 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8 %1, i8* %5, align 1
  store %struct.s_write* %2, %struct.s_write** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8, i8* %4, align 1
  %9 = load %struct.s_write*, %struct.s_write** %6, align 8
  %10 = call i32 @check_channel(i8 zeroext %8, %struct.s_write* %9)
  %11 = load %struct.s_write*, %struct.s_write** %6, align 8
  %12 = getelementptr inbounds %struct.s_write, %struct.s_write* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp sge i32 %14, 24
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load i8, i8* %4, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp sle i32 %18, 31
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i8, i8* %4, align 1
  %22 = zext i8 %21 to i32
  %23 = sub nsw i32 %22, 8
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %4, align 1
  br label %25

25:                                               ; preds = %20, %16, %3
  %26 = load i8, i8* %4, align 1
  %27 = zext i8 %26 to i32
  switch i32 %27, label %190 [
    i32 16, label %28
    i32 17, label %42
    i32 18, label %82
    i32 19, label %82
    i32 20, label %109
    i32 21, label %109
    i32 22, label %136
    i32 23, label %150
  ]

28:                                               ; preds = %25
  %29 = load i8, i8* %5, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sge i32 %30, 64
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i8, i8* %5, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp sle i32 %34, 95
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i8, i8* %4, align 1
  %38 = load i8, i8* %5, align 1
  %39 = load %struct.s_write*, %struct.s_write** %6, align 8
  %40 = call i32 @handle_pac(i8 zeroext %37, i8 zeroext %38, %struct.s_write* %39)
  br label %41

41:                                               ; preds = %36, %32, %28
  br label %190

42:                                               ; preds = %25
  %43 = load i8, i8* %5, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp sge i32 %44, 32
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i8, i8* %5, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp sle i32 %48, 47
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i8, i8* %4, align 1
  %52 = load i8, i8* %5, align 1
  %53 = load %struct.s_write*, %struct.s_write** %6, align 8
  %54 = call i32 @handle_text_attr(i8 zeroext %51, i8 zeroext %52, %struct.s_write* %53)
  br label %55

55:                                               ; preds = %50, %46, %42
  %56 = load i8, i8* %5, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp sge i32 %57, 48
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i8, i8* %5, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp sle i32 %61, 63
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  store i32 1, i32* %7, align 4
  %64 = load i8, i8* %4, align 1
  %65 = load i8, i8* %5, align 1
  %66 = load %struct.s_write*, %struct.s_write** %6, align 8
  %67 = call i32 @handle_double(i8 zeroext %64, i8 zeroext %65, %struct.s_write* %66)
  br label %68

68:                                               ; preds = %63, %59, %55
  %69 = load i8, i8* %5, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp sge i32 %70, 64
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i8, i8* %5, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp sle i32 %74, 127
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i8, i8* %4, align 1
  %78 = load i8, i8* %5, align 1
  %79 = load %struct.s_write*, %struct.s_write** %6, align 8
  %80 = call i32 @handle_pac(i8 zeroext %77, i8 zeroext %78, %struct.s_write* %79)
  br label %81

81:                                               ; preds = %76, %72, %68
  br label %190

82:                                               ; preds = %25, %25
  %83 = load i8, i8* %5, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp sge i32 %84, 32
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load i8, i8* %5, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp sle i32 %88, 63
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i8, i8* %4, align 1
  %92 = load i8, i8* %5, align 1
  %93 = load %struct.s_write*, %struct.s_write** %6, align 8
  %94 = call i32 @handle_extended(i8 zeroext %91, i8 zeroext %92, %struct.s_write* %93)
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %90, %86, %82
  %96 = load i8, i8* %5, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp sge i32 %97, 64
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = load i8, i8* %5, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp sle i32 %101, 127
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i8, i8* %4, align 1
  %105 = load i8, i8* %5, align 1
  %106 = load %struct.s_write*, %struct.s_write** %6, align 8
  %107 = call i32 @handle_pac(i8 zeroext %104, i8 zeroext %105, %struct.s_write* %106)
  br label %108

108:                                              ; preds = %103, %99, %95
  br label %190

109:                                              ; preds = %25, %25
  %110 = load i8, i8* %5, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp sge i32 %111, 32
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = load i8, i8* %5, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp sle i32 %115, 47
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i8, i8* %4, align 1
  %119 = load i8, i8* %5, align 1
  %120 = load %struct.s_write*, %struct.s_write** %6, align 8
  %121 = call i32 @handle_command(i8 zeroext %118, i8 zeroext %119, %struct.s_write* %120)
  br label %122

122:                                              ; preds = %117, %113, %109
  %123 = load i8, i8* %5, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp sge i32 %124, 64
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load i8, i8* %5, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp sle i32 %128, 127
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load i8, i8* %4, align 1
  %132 = load i8, i8* %5, align 1
  %133 = load %struct.s_write*, %struct.s_write** %6, align 8
  %134 = call i32 @handle_pac(i8 zeroext %131, i8 zeroext %132, %struct.s_write* %133)
  br label %135

135:                                              ; preds = %130, %126, %122
  br label %190

136:                                              ; preds = %25
  %137 = load i8, i8* %5, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp sge i32 %138, 64
  br i1 %139, label %140, label %149

140:                                              ; preds = %136
  %141 = load i8, i8* %5, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp sle i32 %142, 127
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load i8, i8* %4, align 1
  %146 = load i8, i8* %5, align 1
  %147 = load %struct.s_write*, %struct.s_write** %6, align 8
  %148 = call i32 @handle_pac(i8 zeroext %145, i8 zeroext %146, %struct.s_write* %147)
  br label %149

149:                                              ; preds = %144, %140, %136
  br label %190

150:                                              ; preds = %25
  %151 = load i8, i8* %5, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp sge i32 %152, 33
  br i1 %153, label %154, label %163

154:                                              ; preds = %150
  %155 = load i8, i8* %5, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp sle i32 %156, 35
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load i8, i8* %4, align 1
  %160 = load i8, i8* %5, align 1
  %161 = load %struct.s_write*, %struct.s_write** %6, align 8
  %162 = call i32 @handle_command(i8 zeroext %159, i8 zeroext %160, %struct.s_write* %161)
  br label %163

163:                                              ; preds = %158, %154, %150
  %164 = load i8, i8* %5, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp sge i32 %165, 46
  br i1 %166, label %167, label %176

167:                                              ; preds = %163
  %168 = load i8, i8* %5, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp sle i32 %169, 47
  br i1 %170, label %171, label %176

171:                                              ; preds = %167
  %172 = load i8, i8* %4, align 1
  %173 = load i8, i8* %5, align 1
  %174 = load %struct.s_write*, %struct.s_write** %6, align 8
  %175 = call i32 @handle_text_attr(i8 zeroext %172, i8 zeroext %173, %struct.s_write* %174)
  br label %176

176:                                              ; preds = %171, %167, %163
  %177 = load i8, i8* %5, align 1
  %178 = zext i8 %177 to i32
  %179 = icmp sge i32 %178, 64
  br i1 %179, label %180, label %189

180:                                              ; preds = %176
  %181 = load i8, i8* %5, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp sle i32 %182, 127
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = load i8, i8* %4, align 1
  %186 = load i8, i8* %5, align 1
  %187 = load %struct.s_write*, %struct.s_write** %6, align 8
  %188 = call i32 @handle_pac(i8 zeroext %185, i8 zeroext %186, %struct.s_write* %187)
  br label %189

189:                                              ; preds = %184, %180, %176
  br label %190

190:                                              ; preds = %25, %189, %149, %135, %108, %81, %41
  %191 = load i32, i32* %7, align 4
  ret i32 %191
}

declare dso_local i32 @check_channel(i8 zeroext, %struct.s_write*) #1

declare dso_local i32 @handle_pac(i8 zeroext, i8 zeroext, %struct.s_write*) #1

declare dso_local i32 @handle_text_attr(i8 zeroext, i8 zeroext, %struct.s_write*) #1

declare dso_local i32 @handle_double(i8 zeroext, i8 zeroext, %struct.s_write*) #1

declare dso_local i32 @handle_extended(i8 zeroext, i8 zeroext, %struct.s_write*) #1

declare dso_local i32 @handle_command(i8 zeroext, i8 zeroext, %struct.s_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

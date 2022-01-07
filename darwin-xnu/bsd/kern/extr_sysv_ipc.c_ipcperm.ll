; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sysv_ipc.c_ipcperm.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sysv_ipc.c_ipcperm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_perm = type { i32, i64, i64, i64, i64 }

@IPC_M = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipcperm(i32 %0, %struct.ipc_perm* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipc_perm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.ipc_perm* %1, %struct.ipc_perm** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @kauth_cred_getuid(i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @IPC_M, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.ipc_perm*, %struct.ipc_perm** %6, align 8
  %20 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @S_IRWXU, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.ipc_perm*, %struct.ipc_perm** %6, align 8
  %25 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @S_IRWXG, align 4
  %28 = and i32 %26, %27
  %29 = shl i32 %28, 3
  store i32 %29, i32* %12, align 4
  %30 = load %struct.ipc_perm*, %struct.ipc_perm** %6, align 8
  %31 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @S_IRWXO, align 4
  %34 = and i32 %32, %33
  %35 = shl i32 %34, 6
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @suser(i32 %36, i32* null)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %165

40:                                               ; preds = %3
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.ipc_perm*, %struct.ipc_perm** %6, align 8
  %43 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.ipc_perm*, %struct.ipc_perm** %6, align 8
  %49 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %46, %40
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %165

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @EACCES, align 4
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi i32 [ 0, %62 ], [ %64, %63 ]
  store i32 %66, i32* %4, align 4
  br label %165

67:                                               ; preds = %46
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @EPERM, align 4
  store i32 %71, i32* %4, align 4
  br label %165

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %13, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %165

82:                                               ; preds = %73
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %12, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %127

88:                                               ; preds = %82
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.ipc_perm*, %struct.ipc_perm** %6, align 8
  %91 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @kauth_cred_ismember_gid(i32 %89, i64 %92, i32* %10)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %118, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %95
  %99 = load %struct.ipc_perm*, %struct.ipc_perm** %6, align 8
  %100 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.ipc_perm*, %struct.ipc_perm** %6, align 8
  %103 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %101, %104
  br i1 %105, label %116, label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.ipc_perm*, %struct.ipc_perm** %6, align 8
  %109 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @kauth_cred_ismember_gid(i32 %107, i64 %110, i32* %10)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113, %98
  %117 = load i32, i32* @EACCES, align 4
  store i32 %117, i32* %4, align 4
  br label %165

118:                                              ; preds = %113, %106, %95, %88
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %13, align 4
  %121 = and i32 %119, %120
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* @EACCES, align 4
  store i32 %125, i32* %4, align 4
  br label %165

126:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %165

127:                                              ; preds = %82
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.ipc_perm*, %struct.ipc_perm** %6, align 8
  %130 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @kauth_cred_ismember_gid(i32 %128, i64 %131, i32* %10)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %127
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %155, label %137

137:                                              ; preds = %134, %127
  %138 = load %struct.ipc_perm*, %struct.ipc_perm** %6, align 8
  %139 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.ipc_perm*, %struct.ipc_perm** %6, align 8
  %142 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %140, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %137
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.ipc_perm*, %struct.ipc_perm** %6, align 8
  %148 = getelementptr inbounds %struct.ipc_perm, %struct.ipc_perm* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @kauth_cred_ismember_gid(i32 %146, i64 %149, i32* %10)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %145
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152, %134
  store i32 0, i32* %4, align 4
  br label %165

156:                                              ; preds = %152, %145, %137
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %13, align 4
  %159 = and i32 %157, %158
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = load i32, i32* @EACCES, align 4
  store i32 %163, i32* %4, align 4
  br label %165

164:                                              ; preds = %156
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %164, %162, %155, %126, %124, %116, %81, %70, %65, %55, %39
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i64 @kauth_cred_getuid(i32) #1

declare dso_local i32 @suser(i32, i32*) #1

declare dso_local i32 @kauth_cred_ismember_gid(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
